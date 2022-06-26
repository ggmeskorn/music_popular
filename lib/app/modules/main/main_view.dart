// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
