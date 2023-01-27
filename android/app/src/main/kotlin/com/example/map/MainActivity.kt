package com.example.map
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import com.yandex.mapkit.MapKitFactory;
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("c5231c0e-9113-4d7f-a8a4-f8a98788049e")
        MapKitFactory.setLocale("ru_Ru");
        super.configureFlutterEngine(flutterEngine)
    }
}
