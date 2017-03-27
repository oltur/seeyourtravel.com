package com.seeyourtravel.android.sytandroidapp;

import android.os.AsyncTask;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by Alext on 3/23/2017.
 */

public class MyDownloadTask extends AsyncTask<URL, Void, String> {

    private Exception exception;

    protected String doInBackground(URL... urls) {
        URL url = urls[0];
        try {
            HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
            try {
                int result = urlConnection.getResponseCode();
                InputStream in = new BufferedInputStream(urlConnection.getInputStream());
                //readStream(in);
                BufferedReader r = new BufferedReader(new InputStreamReader(in));
                StringBuilder total = new StringBuilder();
                String line;
                while ((line = r.readLine()) != null) {
                    total.append(line).append('\n');
                }
            }
            catch(Exception ex)
            {
                int x = 3;
                x = x+1;
            }
            finally {
                urlConnection.disconnect();
            }
        }
        catch (java.net.MalformedURLException ex) {

        }
        catch (java.io.IOException ex) {

        }
        catch(Exception ex)
        {
            int x = 3;
            x = x+1;
        }
        return "";
    }

    protected void onPostExecute(String result) {
        // TODO: check this.exception
        // TODO: do something with the feed
    }
}