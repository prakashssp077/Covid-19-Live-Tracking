import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class WorldWidePanel extends StatelessWidget {
  final Map worldData;
  const WorldWidePanel({Key key, this.worldData,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('WorldWide',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),
//            Text(''+date.trim(),
//              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),

            SizedBox(height: 10,),
            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 18),
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
                                  Text(worldData['cases'].toString(),
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
                                      Text(worldData['active'].toString(),
                                        style: TextStyle(color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.arrow_upward,size: 10,color: Colors.red[800],),
                                          Text(worldData['todayCases'].toString(),style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red)),
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
                                      Text(worldData['deaths'].toString(),
                                        style: TextStyle(color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.arrow_upward,size: 10,color: Colors.red[800],),
                                          Text(worldData['todayDeaths'].toString(),style:TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red)),
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
                                  Text(worldData['recovered'].toString(),
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
                                  //SizedBox(height: 5,),
                                  Text('RECOVERED', style: TextStyle(
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
                                  Text(
                                    worldData['affectedCountries'].toString(),
                                    style: TextStyle(color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),),
                                  Text('TOTAL COUNTRY', style: TextStyle(
                                      fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),

          ],
        )
    );
  }
}
