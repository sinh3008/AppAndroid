package com.example.appbanhang.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.example.appbanhang.R;
import com.example.appbanhang.model.Item;
import com.example.appbanhang.utils.Utils;

import java.util.List;

public class AdapterChitiet extends RecyclerView.Adapter<AdapterChitiet.MyViewHolder> {

    Context context;
    List<Item> itemList;

    public AdapterChitiet(Context context, List<Item> itemList) {
        this.context = context;
        this.itemList = itemList;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_chitiet, parent, false);
        return new MyViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        Item item = itemList.get(position);
        holder.txtten.setText(item.getTensp() + "");
        holder.txtsoluong.setText("Số lượng: "+item.getSoluong() + "");

        if (item.getHinhanh().contains("http")) {
            Glide.with(context).load(item.getHinhanh()).into(holder.imagechitiet);
        } else {
            String urlhinh = Utils.BASE_URL+"images/"+item.getHinhanh();
            Glide.with(context).load(urlhinh).into(holder.imagechitiet);
        }


        Glide.with(context).load(item.getHinhanh()).into(holder.imagechitiet);

    }

    @Override
    public int getItemCount() {
        return itemList.size();
    }

    public class MyViewHolder extends RecyclerView.ViewHolder {
        ImageView imagechitiet;
        TextView txtten, txtsoluong;

        public MyViewHolder(@NonNull View itemView) {
            super(itemView);
            imagechitiet = itemView.findViewById(R.id.item_chitiet_img);
            txtten = itemView.findViewById(R.id.item_chitiettensp);
            txtsoluong = itemView.findViewById(R.id.item_chitietsoluongsp);
        }
    }
}
