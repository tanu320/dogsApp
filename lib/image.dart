import 'package:flutter/material.dart';

// ignore: camel_case_types
class image extends StatefulWidget {
  @override
  _imageState createState() => _imageState();
}

// ignore: camel_case_types
class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    Map information;
    information = (ModalRoute.of(context).settings.arguments);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'Photo of the doggo'
            )
          ],
          ),
        backgroundColor: Colors.orange[800],
      ),
      body:
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(information['url']),
                  fit: BoxFit.scaleDown,
                )
            ),
          ),
      );
  }
}
//Container(
//decoration: BoxDecoration(
//image: DecorationImage(
//image: NetworkImage(information['url']),
//fit: BoxFit.scaleDown,
//)
//),
//),
//RaisedButton(
//
//)