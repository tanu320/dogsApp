import 'dart:collection';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:collection/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:my_own/loadingState.dart';


class Options extends StatefulWidget {
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {

  @override
  Widget build(BuildContext context) {
    try {
      List<dynamic> list;
      list = (ModalRoute
          .of(context)
          .settings
          .arguments);
      List<String> finalNames = [];
      for (int i = 0; i < list.length; i++)
        finalNames.add((list[i])['name']);
//    print(finalNames);
      //  print(list[7]);
      return Scaffold(
        backgroundColor: Colors.teal[100],
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                int count = 0;
                Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
              },
            ),
            title: Text(
              'Choose the breed',
            ),
            backgroundColor: Colors.orange[900],
          ),
          body: Center(
            child: ListView.builder(
              itemCount: 141,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(
                          context, '/load2', arguments: list[index]);
                    },
                    title: Text(
                      finalNames[index],
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  color: Colors.teal[400],
                  margin: EdgeInsets.all(6.0),
                  elevation: 4.0,
                );
              },
            ),
          )
      );
    }
    catch(e)
    {print('Something went wrong');}
  }
}
