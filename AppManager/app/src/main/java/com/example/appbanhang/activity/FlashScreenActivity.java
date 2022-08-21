package com.example.appbanhang.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;

import com.example.appbanhang.R;

import io.paperdb.Paper;

public class FlashScreenActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_flash_screen);
        Paper.init(this);
        Thread thread = new Thread(threeminute);
        thread.start();
    }

    Runnable threeminute = new Runnable() {
        @Override
        public void run() {
            try {
                Thread.sleep(1000);
                if (Paper.book().read("user") == null) {
                    Intent chuyendangn = new Intent(getApplicationContext(), DangnhapActivity.class);
                    startActivity(chuyendangn);
                    finish();
                } else {
                    Intent chuyenmain = new Intent(getApplicationContext(), MainActivity.class);
                    startActivity(chuyenmain);
                    finish();
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    };
}