package com.seeyourtravel.android.sytandroidapp;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;

/**
 * Created by Alext on 3/23/2017.
 */
public class JavaScriptInterface {
    private Activity activity;

    public JavaScriptInterface(MainActivity activiy) {
        this.activity = activiy;
    }

    @android.webkit.JavascriptInterface
    public void setUserId(String userId){
        MainActivity.userId = userId;
    }

    @android.webkit.JavascriptInterface
    public void notifyPageLoaded() {
        if(MainActivity.MapPlaceholderFragment.instance.pd != null && MainActivity.MapPlaceholderFragment.instance.pd.isShowing())
            MainActivity.MapPlaceholderFragment.instance.pd.hide();
    }
}