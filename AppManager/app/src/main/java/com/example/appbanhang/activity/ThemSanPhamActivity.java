package com.example.appbanhang.activity;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import com.example.appbanhang.R;
import com.example.appbanhang.databinding.ActivityThemSanPhamBinding;
import com.example.appbanhang.model.MessageModel;
import com.example.appbanhang.model.SanPhamMoi;
import com.example.appbanhang.retrofit.ApiBanHang;
import com.example.appbanhang.retrofit.RetrofitClient;
import com.example.appbanhang.utils.Utils;
import com.github.dhaval2404.imagepicker.ImagePicker;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ThemSanPhamActivity extends AppCompatActivity {

    Spinner spinnerthem;
    int loai = 0;

    ActivityThemSanPhamBinding binding;

    ApiBanHang apiBanHang;
    CompositeDisposable compositeDisposable = new CompositeDisposable();

    String mediaPath;

    SanPhamMoi sanPhamSua;

    boolean flag = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_them_san_pham);

        binding = ActivityThemSanPhamBinding.inflate(getLayoutInflater());

        apiBanHang = RetrofitClient.getInstance(Utils.BASE_URL).create(ApiBanHang.class);

        setContentView(binding.getRoot());


        initView();
        initData();

        Intent suasp = getIntent();
        sanPhamSua = (SanPhamMoi) suasp.getSerializableExtra("sua");
        //check 2 trường hợp ( thêm và sửa)
        if (sanPhamSua == null) {
            // thêm mới  sp
            flag = false;
        } else {
            //sửa sản phẩm
            flag = true;
            binding.thembtnThem.setText("Sửa sản phẩm");

            //show data lên edit text
            binding.edtthemtensp.setText(sanPhamSua.getTensp());
            binding.edtthemgiasp.setText(sanPhamSua.getGiasp() + "");
            binding.edtthemhinhanhsp.setText(sanPhamSua.getHinhanh());
            binding.edtthemmotasp.setText(sanPhamSua.getMota());
            binding.themSpinnerloaisp.setSelection(sanPhamSua.getLoai());
        }

    }

    private void initView() {
        spinnerthem = findViewById(R.id.them_spinnerloaisp);
    }

    private void initData() {
        List<String> stringList = new ArrayList<>();
        stringList.add("Loại sản phẩm");
        stringList.add("Điện thoại");
        stringList.add("Laptop");
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, android.R.layout.simple_spinner_dropdown_item, stringList);
        spinnerthem.setAdapter(adapter);

        spinnerthem.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int i, long id) {
                loai = i;
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {
            }
        });

        binding.thembtnThem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (flag == false) {
                    themsanpham();
                } else if(flag == true){
                    suaSanpham();
                }
            }
        });

        binding.imguploadimages.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ImagePicker.with(ThemSanPhamActivity.this)
                        .crop()                    //Crop image(Optional), Check Customization for more option
                        .compress(1024)            //Final image size will be less than 1 MB(Optional)
                        .maxResultSize(1080, 1080)    //Final image resolution will be less than 1080 x 1080(Optional)
                        .start();
            }
        });

        binding.thembtnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent trove = new Intent(getApplicationContext(), QuanlyActivity.class);
                startActivity(trove);
                finish();
            }
        });

    }

    private void suaSanpham() {
        String str_ten = binding.edtthemtensp.getText().toString().trim();
        String str_gia = binding.edtthemgiasp.getText().toString().trim();
        String str_hinhanh = binding.edtthemhinhanhsp.getText().toString().trim();
        String str_mota = binding.edtthemmotasp.getText().toString().trim();

        if (TextUtils.isEmpty(str_ten) || TextUtils.isEmpty(str_gia) || TextUtils.isEmpty(str_hinhanh) || TextUtils.isEmpty(str_mota) || loai == 0) {
            Toast.makeText(getApplicationContext(), "Vui lòng điền đủ thông tin", Toast.LENGTH_SHORT).show();
        } else {
            compositeDisposable.add(apiBanHang.updateSp(str_ten,str_gia,str_hinhanh,str_mota,loai,sanPhamSua.getId())
                    .subscribeOn(Schedulers.io())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe(
                            messageModel -> {
                                if (messageModel.isSuccess()) {
                                    Toast.makeText(getApplicationContext(), "Thành công", Toast.LENGTH_SHORT).show();
                                } else {
                                    Log.d("suaSanpham: ", messageModel.getMessage());
                                    Toast.makeText(getApplicationContext(), "Lỗi " + messageModel.getMessage(), Toast.LENGTH_SHORT).show();
                                }
                            },
                            throwable -> {
                                Toast.makeText(getApplicationContext(), "Lỗi này", Toast.LENGTH_SHORT).show();
                            }
                    )
            );
        }
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        mediaPath = data.getDataString();
        uploadMultipleFiles();
        Log.d("log", "onActivityResult: " + mediaPath);
    }

    private String getPath(Uri uri) {
        String result;

        Cursor c = getContentResolver().query(uri, null, null, null, null);
        if (c == null) {
            result = uri.getPath();
        } else {
            c.moveToFirst();
            int index = c.getColumnIndex(MediaStore.Images.ImageColumns.DATA);
            result = c.getString(index);
            c.close();
        }
        return result;
    }


    private void themsanpham() {
        String str_ten = binding.edtthemtensp.getText().toString();
        String str_gia = binding.edtthemgiasp.getText().toString().trim();
        String str_hinhanh = binding.edtthemhinhanhsp.getText().toString().trim();
        String str_mota = binding.edtthemmotasp.getText().toString().trim();

        if (TextUtils.isEmpty(str_ten) || TextUtils.isEmpty(str_gia) || TextUtils.isEmpty(str_hinhanh) || TextUtils.isEmpty(str_mota) || loai == 0) {
            Toast.makeText(getApplicationContext(), "Vui lòng điền đủ thông tin", Toast.LENGTH_SHORT).show();
        } else {
            compositeDisposable.add(apiBanHang.insertSp(str_ten, str_gia, str_hinhanh, str_mota, loai)
                    .subscribeOn(Schedulers.io())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe(
                            messageModel -> {
                                if (messageModel.isSuccess()) {
                                    Toast.makeText(getApplicationContext(), messageModel.getMessage(), Toast.LENGTH_SHORT).show();
                                } else {
                                    Toast.makeText(getApplicationContext(), "Lỗi" + messageModel.getMessage(), Toast.LENGTH_SHORT).show();
                                }
                            },
                            throwable -> {
                                Toast.makeText(getApplicationContext(), throwable.getMessage(), Toast.LENGTH_SHORT).show();
                            }
                    )
            );
        }
    }


    @Override
    protected void onDestroy() {
        compositeDisposable.clear();
        super.onDestroy();
    }


    // Uploading Image/Video
    private void uploadMultipleFiles() {
        Uri uri = Uri.parse(mediaPath);

        File file = new File(getPath(uri));

        // Parsing any Media type file
        RequestBody requestBody1 = RequestBody.create(MediaType.parse("*/*"), file);

        MultipartBody.Part fileToUpload1 = MultipartBody.Part.createFormData("file", file.getName(), requestBody1);


        Call<MessageModel> call = apiBanHang.uploadFile(fileToUpload1);
        call.enqueue(new Callback<MessageModel>() {
            @Override
            public void onResponse(Call<MessageModel> call, Response<MessageModel> response) {
                MessageModel serverResponse = response.body();
                if (serverResponse != null) {
                    if (serverResponse.isSuccess()) {
                        binding.edtthemhinhanhsp.setText(serverResponse.getName());
                        Toast.makeText(ThemSanPhamActivity.this, "Up ảnh thành công", Toast.LENGTH_SHORT).show();
                    } else {
                        Toast.makeText(getApplicationContext(), serverResponse.getMessage(), Toast.LENGTH_SHORT).show();
                    }
                } else {
                    Log.v("onResponse: ", serverResponse.toString());
                    Toast.makeText(ThemSanPhamActivity.this, "Up ảnh lỗi", Toast.LENGTH_SHORT).show();
                }
            }

            @Override
            public void onFailure(Call<MessageModel> call, Throwable t) {
                Toast.makeText(ThemSanPhamActivity.this, "Up ảnh lỗi ở Throwable", Toast.LENGTH_SHORT).show();
                Log.d("onFailure: ", t.getMessage());
            }
        });
    }
}