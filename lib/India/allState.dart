import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class AllStates extends StatelessWidget {
  final List stateData;

  const AllStates({Key key, this.stateData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color:Colors.white,

      ),
        child:ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child:  ListView.builder(
            itemCount: stateData.length,
              itemBuilder:(BuildContext context,index){
                return Container(
                  height: 120,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(child: Text(stateData[index]['state'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('ACTIVE: '+stateData[index]['active'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                                SizedBox(height: 10,),
                                Text('CONFIRMED: '+stateData[index]['confirmed'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('RECOVERED: '+stateData[index]['recovered'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                                Text('DEATHS: '+stateData[index]['deaths'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green.withOpacity(0.15)
                              ),
                              child: const SpinKitRipple(
                                color: Colors.red, size: 20,),
                            ),
                            Text('UPDATED: '+stateData[index]['lastupdatedtime'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.blue),)

                          ],
                        )



                      ],
                    ),
                  ),
                );
              }
          ),
        )
    )
    );
  }
}
