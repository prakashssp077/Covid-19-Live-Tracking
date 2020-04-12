import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class CountryPage extends StatefulWidget {
  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  List countryData;
  fetchCountryData()async{
    http.Response response =await http.get('https://corona.lmao.ninja/countries');
    setState(() {
      countryData =json.decode(response.body);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    fetchCountryData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Country States'),),
      body: countryData==null?Center(child: CircularProgressIndicator(),):ListView.builder(
          itemBuilder: (context,index){
            return Container(
              height: 130,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color:Colors.grey[100],blurRadius: 10,offset:Offset(0,10)),]),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(countryData[index]['country'],style: TextStyle(fontWeight: FontWeight.bold),),
                        Image.network(countryData[index]['countryInfo']['flag'],height: 50,width: 60,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('CONFIRMED: '+countryData[index]['cases'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                          SizedBox(height: 10,),
                          Text('ACTIVE: '+countryData[index]['active'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                          SizedBox(height: 10,),
                          Text('RECOVERED: '+countryData[index]['recovered'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          SizedBox(height: 10,),
                          Text('DEATHS: '+countryData[index]['deaths'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[800]),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
      )
    );
  }
}
