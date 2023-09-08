import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      // اضافه کردن ویجت اصلی برنامه
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Overlay '),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // نمایش پیام overlay
            showOverlayMessage(context);
          },
          child: Text('نمایش ویجت '),
        ),
      ),
    );
  }
}

void showOverlayMessage(BuildContext context) {
  // نمایش پیام overlay
  showSimpleNotification(Text("ali liked your pic"),
      leading: Text("@ali"), elevation: 1.0, background: Colors.black);
}
