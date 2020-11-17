
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';

// ignore: camel_case_types
class loadingNext extends StatefulWidget {
  @override
  _loadingNextState createState() => _loadingNextState();
}

// ignore: camel_case_types
class _loadingNextState extends State<loadingNext> {
  String URL;
  @override
  void initState() {
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    Map<String,dynamic> details;
    details = (ModalRoute.of(context).settings.arguments);
    String weightImperial = ((details['weight'])['imperial'])==null?'Not Available':((details['weight'])['imperial']);
    String weightMetric = ((details['weight'])['metric'])==null?'Not Available':((details['weight'])['metric']);
    String heightImperial = ((details['height'])['imperial'])==null?'Not Available':((details['height'])['imperial']);
    String heightMetric = ((details['height'])['metric'])==null?'Not Available':((details['height'])['metric']);
    int ID = details['id'];
    String name = details['name'];
    String bredFor = (details['bred_for'])==null?'Not Available':(details['bred_for']);
    String breedGroup = (details['breed_group'])==null?'Not Available':(details['breed_group']);
    String lifespan = (details['life_span'])==null?'Not Available':(details['life_span']);
    String temperament = (details['temperament'])==null?'Not Available':(details['temperament']);
    URL = details['url'];
     String weight = (weightImperial + ' pounds or ' + weightMetric + ' kg ');
     String height = (heightImperial + ' inches or ' + heightMetric + ' cm ');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Photo of the Doggo'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            int count = 0;
            Navigator.of(context).popUntil((_) => count++ >= 2);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: ()  {
                Navigator.pushNamed(context, '/image',arguments: {
                  'id':ID,
                  'url':URL
                });
              },
              child: CircleAvatar(
                radius: 70,
                backgroundColor:Colors.white24,
                backgroundImage: NetworkImage(URL),
              ),
            ),
            SizedBox(
              height: 20,
              child: Column(
                children: <Widget>[
                  //SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,4,0,0),
                      child: Text('Tap the image to view full size(might take a while to load)',style: TextStyle(color: Colors.red),)
                  ),
                ],
              ),
            ),
            Container(
               margin: EdgeInsets.all(10),
             // padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 4.0,
                    color: Colors.white10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('ID:  ',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                            ),),
                            Text(ID.toString(),
                                style: TextStyle(
                                    fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Name:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(name,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Breed Group:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(breedGroup,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Bred For:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(bredFor,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Lifespan:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(lifespan,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Weight:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(weight,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10),
                            Text('Height:  ',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text(height,
                                style: TextStyle(
                                  fontSize: 13,
                                ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                            Text('Temperament:  ',
                                style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                            Expanded(child:Text(temperament,
                              style: TextStyle(
                                  fontSize: 13,
                              ),))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
      )
      ),
    );
  }
}
