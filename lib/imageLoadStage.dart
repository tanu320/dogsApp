import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class imageLoadState extends StatefulWidget {
  @override
  _imageLoadStateState createState() => _imageLoadStateState();
}

// ignore: camel_case_types
class _imageLoadStateState extends State<imageLoadState> {

  Response response;
  Future<void> getImage(int id,Map<String,dynamic> temporary) async{
    try{
   response = await get('https://api.thedogapi.com/v1/images/search?breed_id=$id');
    List<dynamic> hello = jsonDecode(response.body);
    String imageURL = (hello[0])['url'];
    temporary.addAll({'url':imageURL});
    Navigator.pushNamed(context,'/load3',arguments: temporary);
    }
    catch(e)
    {
      print('Something went wrong');
    }
  }

  @override
  // ignore: missing_return

  Widget build(BuildContext context) {
    try {
      Map<String, dynamic> details;
      print('hey');
      details = (ModalRoute
          .of(context)
          .settings
          .arguments);
      int identity = details['id'];
      getImage(identity, details);
      return Scaffold(
        backgroundColor: Colors.white30,
        body: Center(
          child: SpinKitFadingCube(
            size: 50,
            color: Colors.green,
          ),
        ),
      );
    }
    catch(e)
    {
      print('Something went wrong');
    }
  }

  }

