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
//      appBar: AppBar(
//        title: Text("E-Commerce "),
//        backgroundColor: Colors.deepOrange,
//      ),
//
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
          SizedBox(height: 10.0,),

          Container(
            height: 450.0,
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[

                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Most Popular Items",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xFFec5252)
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 400.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        mostpopular_items(context, shoes, "Hot \& New", "\$80", "Ladies Shoes","10\%"),
                        mostpopular_items(context, oil, "Hot \& New", "\$20", "Brand New oil","3\%"),
                        mostpopular_items(context, dress, "Hot \& New","\$250", "Top and Shirt","15\%"),
                        mostpopular_items(context, laptop, "Hot \& New","\$250", "MacBook Pro","40\%"),
                        mostpopular_items(context, mobile, "Hot \& New","\$165", "iPhone 7+","30\%")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
//categories
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

  //Most popular items
  Widget mostpopular_items(BuildContext context,String image,String tag,String price,String name,String discount){
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            child: Stack(
              children: <Widget>[

                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(image,
                    height: 150.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  //left: 10,
                  child: Container(
                    height: 30.0,
                    width: 110.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFFec5252)
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(tag,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          Text(name,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black
          ),
          ),
          SizedBox(height: 10.0,),

          Container(
            height: 50.0,
            width: 200.0,
            child: Row(
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.amber
                    ),
                    child: Center(
                      child: Text(price,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                      ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 10.0,
                  indent: 6,
                  color: Colors.black,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Text(discount+" Off",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 10.0,),

          Align(
            alignment: Alignment.center,
            child: Container(
              height: 60.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.deepPurple
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text("View Details",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }


}


