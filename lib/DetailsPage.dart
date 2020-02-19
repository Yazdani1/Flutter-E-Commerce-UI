import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => new _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  String shoes1 = "https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes2 = "https://images.pexels.com/photos/1027130/pexels-photo-1027130.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes3 = "https://images.pexels.com/photos/134064/pexels-photo-134064.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes4 = "https://images.pexels.com/photos/637076/pexels-photo-637076.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes5 = "https://images.pexels.com/photos/318236/pexels-photo-318236.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes6 = "https://images.pexels.com/photos/786003/pexels-photo-786003.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String shoes7 = "https://images.pexels.com/photos/2285500/pexels-photo-2285500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";


  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: AppBar(
        title: Text("Product Details"),
        backgroundColor: Color(0xFF72286f),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[

              Container(
                child: Image.network(shoes5,
                height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


