import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'Options.dart';

class Dogs extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Dogs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
              backgroundColor: Colors.orange[900],
              title: Column(
                children: <Widget>[
                  SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                    Icons.pets,
                    size:30
                ),
                SizedBox(width: 25),
                Text(
                  'All the Doggos',
                  style: TextStyle(fontSize: 20, letterSpacing: 1),
                )
              ],
            ),
                ],
                ),
            centerTitle: true,
              ),
        body: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/dogsss.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 400,
                  child:  RaisedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/load');
                      },
                      hoverElevation: 2,
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                          'Boop here to continue',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ])
        ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 230,
             child: Image(
               image: AssetImage('assets/pupper.jpg'),
               fit: BoxFit.fill,
             )
             // child: ,
            ),
            ListTile(
              title: Text('Shelter Homes'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/shelter');
              },
            ),
            ListTile(
              title: Text('Hospitals'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/hospital');
              },
            ),
          ],
        ),
      ),
    );
  }
}
