import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class India extends StatelessWidget {
  final Map indiaData;
  const India({Key key, this.indiaData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.withOpacity(0.15)
                                ),
                                child: const SpinKitRipple(
                                  color: Colors.red, size: 30,),
                              ),
                              Text(indiaData['cases'].toString(),
                                style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),),//
                              //SizedBox(height: 5,),
                              Text('TOTALCASES', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: 35,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.withOpacity(0.15)
                                ),
                                child: const SpinKitRipple(
                                  color: Colors.red, size: 30,),
                              ),
                              SizedBox(height: 3,),
                              Column(
                                children: <Widget>[
                                  Text(indiaData['active'].toString(),
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.arrow_upward,size: 10,color: Colors.red[800],),
                                      Text(indiaData['todayCases'].toString(),style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red)),
                                    ],
                                  ),
                                ],
                              ),
                              Text('INFECTED', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: 35,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.withOpacity(0.15)
                                ),
                                child: const SpinKitRipple(
                                  color: Colors.red, size: 30,),
                              ),
                              SizedBox(height: 3,),
                              Column(
                                children: <Widget>[
                                  Text(indiaData['deaths'].toString(),
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.arrow_upward,size: 10,color: Colors.red[800],),
                                      Text(indiaData['todayDeaths'].toString(),style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red)),
                                    ],
                                  ),
                                ],
                              ),
                              Text('Deaths', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(width: 35,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment
                                .spaceAround,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green.withOpacity(0.15)
                                ),
                                child: const SpinKitRipple(
                                  color: Colors.red, size: 30,),
                              ),
                              // SizedBox(height: 5,),
                              Text(indiaData['recovered'].toString(),
                                style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),),
                              //SizedBox(height: 5,),
                              Text('RECOVERED', style: TextStyle(
                                  fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }
      )),
    );
  }
}
