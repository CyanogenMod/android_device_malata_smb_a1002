package com.gojimi.audiofix;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;



public class audiofixbroadcastreciever extends BroadcastReceiver{
	@Override
	public void onReceive(Context context, Intent intent) {
		Intent serviceIntent = new Intent();
		serviceIntent.setAction("com.gojimi.audiofix.audiofixservice");
		context.startService(serviceIntent);

	}
	}