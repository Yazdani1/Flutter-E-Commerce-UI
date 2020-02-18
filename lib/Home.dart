import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  String shoes="https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String dress="https://images.pexels.com/photos/1078958/pexels-photo-1078958.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String oil="https://images.pexels.com/photos/932587/pexels-photo-932587.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String mobile="https://images.pexels.com/photos/248528/pexels-photo-248528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String laptop="https://images.pexels.com/photos/1229861/pexels-photo-1229861.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor:Color(0xFFf2f3f4),
      appBar: AppBar(
        title: Text("E-Commerce "),
        backgroundColor: Colors.deepOrange,
      ),

      drawer: Drawer(

      ),

      body: ListView(
        children: <Widget>[
          //First container
          Container(
            margin: EdgeInsets.all(5.0),
            height: 200.0,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  NetworkImage(
                      'https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  NetworkImage(
                      'https://images.pexels.com/photos/137603/pexels-photo-137603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  NetworkImage(
                    'https://images.pexels.com/photos/1478442/pexels-photo-1478442.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          
          //Second container
          
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 5.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  gategories(context, shoes, "Shoes"),
                  gategories(context, dress, "Dress"),
                  gategories(context, oil, "Oil"),
                  gategories(context, mobile, "Mobile"),
                  gategories(context, laptop, "Laptop"),
                ],
              ),
            ),
          ),
          



        ],
      ),


    );
  }

  Widget gategories(BuildContext context, String img,String name){
    return Container(
      child: Column(
        children: <Widget>[

          Container(
            margin: EdgeInsets.all(10.0),
            child: ClipOval(
              child: Image.network(img,
              height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 6.0,),
          Container(
            child: Text(name,
            style: TextStyle(
              fontSize: 20.0
            ),
            ),
          )

        ],
      ),
    );
  }

}


