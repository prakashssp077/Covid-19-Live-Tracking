import 'package:covid19/worldwide/countryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MostAffectedCountry extends StatelessWidget {
  final List countryData;

  const MostAffectedCountry({Key key, this.countryData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Color> colors =[Colors.green,Colors.blue,Colors.orange,Colors.amber[400],Colors.blueGrey];
    List<int> numbers=[201,181,99,69,75];
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal:3.5),
      child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Most Affected Countries',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>CountryPage() //CountryPage()
                      ));
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing:0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context,index){
                  return Container(
                    margin:EdgeInsets.symmetric(vertical: 10,horizontal:3.5),
                    width: 190,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                          height: 250.0,
                          width: 180.0,
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
                                Image.network(countryData[numbers[index]]['countryInfo']['flag'],height: 35,),
                                SizedBox(height: 5,),
                                Text(countryData[numbers[index]]['country'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                SizedBox(height: 5,),
                                Text('Infected',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text( countryData[numbers[index]]['active'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 10,),
                                    Icon(Icons.arrow_upward,size: 10,color: Colors.red,),
                                    Text( countryData[numbers[index]]['todayCases'].toString(),style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 10),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text('Deaths',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text( countryData[numbers[index]]['deaths'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 10,),
                                    Icon(Icons.arrow_upward,size: 10,color: Colors.red,),
                                    Text( countryData[numbers[index]]['todayDeaths'].toString(),style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 10),),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text('Recovered',style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 20),),
                                Text( countryData[numbers[index]]['recovered'].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                  }
              ),
            )
          ],
        ),
    );
  }
}
