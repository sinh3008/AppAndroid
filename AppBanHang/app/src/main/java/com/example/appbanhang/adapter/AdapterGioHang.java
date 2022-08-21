package com.example.appbanhang.adapter;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.appbanhang.Interface.IImageClickListener;
import com.example.appbanhang.R;
import com.example.appbanhang.model.EventBus.TinhtongEvent;
import com.example.appbanhang.model.GioHang;
import com.example.appbanhang.utils.Utils;

import org.greenrobot.eventbus.EventBus;

import java.text.DecimalFormat;
import java.util.List;

public class AdapterGioHang extends RecyclerView.Adapter<AdapterGioHang.MyViewHolder> {
    Context context;
    List<GioHang> gioHangList;

    public AdapterGioHang(Context context, List<GioHang> gioHangList) {
        this.context = context;
        this.gioHangList = gioHangList;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_giohang, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        GioHang gioHang = gioHangList.get(position);
        holder.item_giohang_tensp.setText(gioHang.getTensp());

        holder.item_giohang_soluong.setText(gioHang.getSoluong() + "");
        Glide.with(context).load(gioHang.getHinhsp()).into(holder.item_giohang_image);

        DecimalFormat decimalFormat = new DecimalFormat();
        holder.item_giohang_giasp.setText(decimalFormat.format(gioHang.getGiasp()) + "");

        long total = gioHang.getSoluong() * gioHang.getGiasp();
        holder.item_giohang_giasp2.setText(decimalFormat.format(total));


        holder.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if (isChecked) {
                    Utils.mangmuahang.add(gioHang);
                    EventBus.getDefault().postSticky(new TinhtongEvent());
                } else {
                    for (int i = 0; i < Utils.mangmuahang.size(); i++) {
                        if (Utils.mangmuahang.get(i).getIdsp() == gioHang.getIdsp()) {
                            Utils.mangmuahang.remove(i);
                            EventBus.getDefault().postSticky(new TinhtongEvent());
                        }
                    }
                }
            }
        });

        holder.setListener(new IImageClickListener() {
            @Override
            public void onImageClick(View view, int pos, int giatri) {
                if (giatri == 1) {
                    if (gioHangList.get(pos).getSoluong() > 1) {
                        int soluongmoi = gioHangList.get(pos).getSoluong() - 1;
                        gioHangList.get(pos).setSoluong(soluongmoi);


                        holder.item_giohang_soluong.setText(gioHangList.get(pos).getSoluong() + "");
                        long total = gioHangList.get(pos).getSoluong() * gioHangList.get(pos).getGiasp();
                        holder.item_giohang_giasp2.setText(decimalFormat.format(total));
                        EventBus.getDefault().postSticky(new TinhtongEvent());

                    } else if (gioHangList.get(pos).getSoluong() == 1) {

                        AlertDialog.Builder builder = new AlertDialog.Builder(view.getRootView().getContext());
                        builder.setTitle("Thông báo");
                        builder.setMessage("Bạn có muốn xoá sản phẩm");
                        builder.setPositiveButton("Đồng ý", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                Utils.manggiohang.remove(pos);
                                notifyDataSetChanged();
                                EventBus.getDefault().postSticky(new TinhtongEvent());
                            }
                        });
                        builder.setNegativeButton("Huỷ", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.dismiss();
                            }
                        });
                        builder.show();
                    }

                } else if (giatri == 2) {

                    if (gioHangList.get(pos).getSoluong() < 10) {
                        int soluongmoi = gioHangList.get(pos).getSoluong() + 1;
                        gioHangList.get(pos).setSoluong(soluongmoi);
                    }

                }

                holder.item_giohang_soluong.setText(gioHangList.get(pos).getSoluong() + "");
                long total = gioHangList.get(pos).getSoluong() * gioHangList.get(pos).getGiasp();
                holder.item_giohang_giasp2.setText(decimalFormat.format(total));
                EventBus.getDefault().postSticky(new TinhtongEvent());
            }
        });

    }

    @Override
    public int getItemCount() {
        return gioHangList.size();
    }


    public class MyViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        ImageView item_giohang_image, item_giohang_tru, item_giohang_cong;
        TextView item_giohang_giasp, item_giohang_tensp, item_giohang_soluong, item_giohang_giasp2;
        IImageClickListener listener;
        CheckBox checkBox;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            item_giohang_image = itemView.findViewById(R.id.item_giohang_image);
            item_giohang_tru = itemView.findViewById(R.id.item_giohang_tru);
            item_giohang_cong = itemView.findViewById(R.id.item_giohang_cong);
            item_giohang_giasp = itemView.findViewById(R.id.item_giohang_giasp);
            item_giohang_tensp = itemView.findViewById(R.id.item_giohang_tensp);
            item_giohang_soluong = itemView.findViewById(R.id.item_giohang_soluong);
            item_giohang_giasp2 = itemView.findViewById(R.id.item_giohang_giasp2);
            checkBox = itemView.findViewById(R.id.item_checkbox_giohang);


            //event click
            item_giohang_cong.setOnClickListener(this);
            item_giohang_tru.setOnClickListener(this);
        }

        public void setListener(IImageClickListener listener) {
            this.listener = listener;
        }

        @Override
        public void onClick(View v) {
            if (v == item_giohang_tru) {
                //gia tri 1 la tru
                listener.onImageClick(v, getAdapterPosition(), 1);
            } else if (v == item_giohang_cong) {
                //gia tri 2 la cong
                listener.onImageClick(v, getAdapterPosition(), 2);
            }
        }
    }
}
