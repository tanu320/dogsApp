import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class loadingState extends StatefulWidget {
  @override
  _loadingStateState createState() => _loadingStateState();
}

// ignore: camel_case_types
class _loadingStateState extends State<loadingState> {
  Map<String, dynamic> data;
  Future<void> getBreed() async {
    try {
      Response response;
      List<dynamic> data = [];
      response = await get('https://api.thedogapi.com/v1/breeds');
      data = jsonDecode(response.body);
      Navigator.pushNamed(context, '/list', arguments: data);
    }
    catch(e)
    {
      print('Something went wrong again');
    }
  }


  @override
  void initState() {
    super.initState();
     getBreed();
  }



  @override
  Widget build(BuildContext context) {
    try {
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
      print('what did just happen?');
    }
  }
}
