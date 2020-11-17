import 'package:flutter/material.dart';

// ignore: camel_case_types
class shelter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Text(
          'SHELTER HOMES'
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/');
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
                title:Text('People For Animals(011-23719293)',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
            ),
          ),
          Divider(color: Colors.black87,),
          ListTile(
            title:Text('Charlie\'s Animal Rescue Centre(09035999372)',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
          ),
          Divider(color: Colors.black87,),
          ListTile(
            title:Text('Blue Cross of India(044 4627 4999)',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
          ),
          Divider(color: Colors.black87,),
          ListTile(
            title:Text('Friendicoes(011 2432 0707)',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
          ),
          Divider(color: Colors.black87,),
          ListTile(
            title:Text('The Bombay Society For The Prevention Of Cruelty To Animals (BSPCA)-(+91-22-24137518)',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
          ),
          Divider(color: Colors.black87,),
          ListTile(
            title:Text('Visakha Society For The Protection And Care For Animals( 91-733-0844751)',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
          ),
          Divider(color: Colors.black87,),

        ],
      )
    );
  }
}
