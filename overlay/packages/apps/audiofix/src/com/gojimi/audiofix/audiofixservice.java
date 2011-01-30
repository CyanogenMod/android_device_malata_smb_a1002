package com.gojimi.audiofix;


import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

import android.media.AudioManager;


public class audiofixservice extends Service {
	
	private static final String TAG = "AudioFixService";
	
	@Override
	public IBinder onBind(Intent intent) {

		return null;

	}

	@Override
	public void onCreate() {
		super.onCreate();
		Log.d(TAG,"Service Created");
		

	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		Log.d(TAG,"Service Ended");

		
	}

	@Override
	public void onStart(Intent intent, int startId) {

		super.onStart(intent, startId);
		Log.d(TAG,"Service Started");		
		toggleHeadset();        
		
	}
	
	public void toggleHeadset() {
		Log.d(TAG,"Notifing Android of Noisy Intent");
		Intent intent = new Intent(AudioManager.ACTION_AUDIO_BECOMING_NOISY);
		Intent i = new Intent(Intent.ACTION_HEADSET_PLUG);
		i.addFlags(1073741824);
		i.putExtra("state", 1);
		i.putExtra("name", "");
		sendBroadcast(intent);
		sendBroadcast(i);
		Log.d(TAG,"Simulated Headset Plugging In");
		Log.d(TAG,"Notifing Android of Second Noisy Intent");
		Intent intent2 = new Intent(AudioManager.ACTION_AUDIO_BECOMING_NOISY);
		Intent i2 = new Intent(Intent.ACTION_HEADSET_PLUG);
		i2.addFlags(1073741824);
		i2.putExtra("state", 0);
		i2.putExtra("name", "");
		sendBroadcast(intent2);
		sendBroadcast(i2);
        Log.d(TAG,"toggleHeadset"); 
        Log.d(TAG,"Simulated Headset UnPlugging");
        stopSelf();
	}
   
}
