import 'package:flutter/material.dart';

// ignore: camel_case_types
class hospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOSPITALS'
        ),
        backgroundColor: Colors.orange[900],
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
              title:Text('SKS Pet Hospital(Phone: 044 4210 8159)',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Divider(color: Colors.black87,),
            ListTile(
              title:Text('The Ark Veterinary Clinic(98418 11445)',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
            ),
            Divider(color: Colors.black87,),
            ListTile(
              title:Text('BMC Hospital(0512 226 3399)',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
            ),
            Divider(color: Colors.black87,),
            ListTile(
              title:Text('The Salvation Army Catherine Booth Hospital(04652 275 516)',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
            ),
            Divider(color: Colors.black87,),
            ListTile(
              title:Text('Canwad Dogs & Cats Clinic(0124 408 0592)',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
            ),
            Divider(color: Colors.black87,),
            ListTile(
              title:Text('KPC Pet Hospital & Diagnostic Centre(098380 03789)',
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
