import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:my_own/hospital.dart';
import 'package:my_own/imageLoadStage.dart';
import 'package:my_own/shelter.dart';
import 'Options.dart';
import 'Dogs.dart';
import 'image.dart';
import 'loadingState.dart';
import 'loadingNext.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) =>Dogs(),
      '/list':(context) => Options(),
      '/load':(context) => loadingState(),
      '/view':(context) => image(),
      '/load2':(context)=>imageLoadState(),
      '/load3':(context)=> loadingNext(),
      '/image':(context)=> image(),
      '/shelter':(context)=> shelter(),
      '/hospital':(context)=>hospital()
    },
  ));
}

