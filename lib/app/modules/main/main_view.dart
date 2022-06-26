// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:music_popular/app/core/values/space.dart';

import 'main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(spaceL),
          child: Column(
            children: [
              verticalSpaceL,
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(spaceS),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      verticalSpaceM
                      // CurrentSongTitle(),
                      // AudioProgressBar(),
                      // AudioControlButtons(),
                    ],
                  ),
                ),
              ),
              // Playlist(),
            ],
          ),
        ));
  }
}
