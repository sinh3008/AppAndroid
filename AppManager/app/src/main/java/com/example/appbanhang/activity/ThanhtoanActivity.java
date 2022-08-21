package com.example.appbanhang.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.appbanhang.R;
import com.example.appbanhang.retrofit.ApiBanHang;
import com.example.appbanhang.retrofit.RetrofitClient;
import com.example.appbanhang.utils.Utils;
import com.google.gson.Gson;

import java.text.DecimalFormat;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class ThanhtoanActivity extends AppCompatActivity {

    Toolbar toolbar;
    TextView txttongtien, txtmobile, txtemail;
    EditText edtdiachi;
    AppCompatButton btndathang;
    CompositeDisposable compositeDisposable = new CompositeDisposable();
    ApiBanHang apiBanHang;

    long tongtien;
    int totalitem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_thanhtoan);
        initView();
        initCtrol();
        getCountItem();
    }

    private void getCountItem() {
        totalitem = 0;
        for (int i = 0; i < Utils.mangmuahang.size(); i++) {
            totalitem = totalitem + Utils.mangmuahang.get(i).getSoluong();
        }
    }

    private void initCtrol() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        tongtien = getIntent().getLongExtra("tongtien", 0);

        txttongtien.setText(decimalFormat.format(tongtien) + "VNĐ");
        txtemail.setText(Utils.user_current.getEmail());
        txtmobile.setText(Utils.user_current.getMobile());

        btndathang.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String str_diachi = edtdiachi.getText().toString().trim();
                if (TextUtils.isEmpty(str_diachi)) {
                    Toast.makeText(ThanhtoanActivity.this, "Vui lòng nhập địa chỉ", Toast.LENGTH_SHORT).show();
                } else {
                    String str_email = Utils.user_current.getEmail();
                    String str_sdt = Utils.user_current.getMobile();
                    int id = Utils.user_current.getId();
                    Log.d("onClick: ", new Gson().toJson(Utils.mangmuahang));
                    compositeDisposable.add(apiBanHang.createOrder(str_email, str_sdt, id, str_diachi, totalitem, String.valueOf(tongtien), new Gson().toJson(Utils.mangmuahang))
                            .subscribeOn(Schedulers.io())
                            .observeOn(AndroidSchedulers.mainThread())
                            .subscribe(
                                    userModel -> {
                                        if(Utils.mangmuahang.size() == 0){
                                            Toast.makeText(ThanhtoanActivity.this, "Bạn chưa mua gì cả", Toast.LENGTH_SHORT).show();
                                        }else {
                                            Toast.makeText(ThanhtoanActivity.this, "Thành công", Toast.LENGTH_SHORT).show();
                                            Utils.mangmuahang.clear();
                                            Intent addnew = new Intent(getApplicationContext(), MainActivity.class);
                                            startActivity(addnew);
                                            finish();
                                        }

                                    },
                                    throwable -> {
                                        Toast.makeText(ThanhtoanActivity.this, throwable.getMessage(), Toast.LENGTH_SHORT).show();
                                    }
                            )

                    );
                }
            }
        });
    }

    private void initView() {
        apiBanHang = RetrofitClient.getInstance(Utils.BASE_URL).create(ApiBanHang.class);
        toolbar = findViewById(R.id.thanhtoantoolbar);
        txttongtien = findViewById(R.id.thanhtoantongtien);
        txtmobile = findViewById(R.id.thanhtoanmoblie);
        txtemail = findViewById(R.id.thanhtoanemail);
        edtdiachi = findViewById(R.id.thanhtoanAddress);
        btndathang = findViewById(R.id.thanhtoanbtndathang);
    }

    @Override
    protected void onDestroy() {
        compositeDisposable.clear();
        super.onDestroy();
    }
}