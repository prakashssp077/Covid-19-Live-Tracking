import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class TamilNadu extends StatelessWidget {
  final List stateData;
  const TamilNadu({Key key, this.stateData}) : super(key: key);
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
                              Text(stateData[2]['confirmed'].toString(),
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
                              Text(stateData[2]['active'].toString(),
                                style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),),
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
                                  Text(stateData[2]['deaths'].toString(),
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
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
                              Text(stateData[2]['recovered'].toString(),
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
