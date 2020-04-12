import 'package:covid19/India/tamilnadu/tamilnadupage.dart';
import 'package:flutter/material.dart';


class MostAffectedStates extends StatelessWidget {
  final List stateData;
  const MostAffectedStates({Key key, this.stateData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Color> colors =[Colors.green,Colors.blue,Colors.orange,Colors.amber[400],Colors.blueGrey];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Most Affected States',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>TamilNaduPage()
                        ));
                      },
                      child: Text('TamilNadu',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 190,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        margin:EdgeInsets.symmetric(vertical: 10,horizontal:2.5),
                        width: 190,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Container(
                              height: 170.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: colors[index],
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(stateData[index]['state'].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(height: 5,),
                                    Text('Infected',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 15),),
                                    Text( stateData[index]['confirmed'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    SizedBox(height: 5,),
                                    Text('Deaths',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 15),),
                                    Text( stateData[index]['deaths'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                    SizedBox(height: 5,),
                                    Text('Recovered',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 15),),
                                    Text( stateData[index]['recovered'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
