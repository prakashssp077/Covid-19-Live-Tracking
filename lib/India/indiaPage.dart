import 'package:covid19/India/allState.dart';
import 'package:covid19/India/mostAffectedStates.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'india.dart';
class IndiaPage extends StatefulWidget {
  @override
  _IndiaPageState createState() => _IndiaPageState();
}

class _IndiaPageState extends State<IndiaPage> {
  Map indiaData;
  fetchIndiaCountryData()async{
    http.Response response =await http.get('https://corona.lmao.ninja/countries/india');
    setState(() {
      indiaData =json.decode(response.body);
    });
  }
  
  List stateData;
  fetchStateData() async{
    http.Response response =await http.get('https://api.covid19india.org/data.json');
    var temp =json.decode(response.body);
    setState(() {
      stateData =temp['statewise'];
      stateData.removeAt(0);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    fetchIndiaCountryData();
    fetchStateData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('India',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)
                )
              ),
              child: Column(
                children: <Widget>[
                indiaData==null?Center(child: CircularProgressIndicator()): India(indiaData: indiaData,),
                  stateData==null?Center(child: CircularProgressIndicator()):MostAffectedStates(stateData: stateData,),
                  stateData==null?Center(child: CircularProgressIndicator(),):AllStates(stateData: stateData,),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
