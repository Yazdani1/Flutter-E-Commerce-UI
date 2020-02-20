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
  String des="It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English";

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                child: Image.network(shoes5,
                height: 250.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 10.0,),

              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Ladies Shoes",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    ),

                    Text("\$240",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black
                    ),
                    )

                  ],
                ),
              ),

              SizedBox(height: 5.0,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Shoes",
                style: TextStyle(
                  fontSize: 15.0,
                ),
                ),
              ),

              SizedBox(height: 5.0,),


              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[

                    Container(
                      height: 50.0,
                      margin: EdgeInsets.all(5.0),
                      width: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF72286f),
                      ),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 6.0,),

              Container(
                height: 100.0,
                padding: EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Text(des,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black
                  ),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF72286f),
                        ),
                        child: Icon(Icons.shopping_cart,
                        color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        height: 70.0,
                        margin: EdgeInsets.only(left: 20.0),
                        width: 170.0,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.add,color: Colors.black,size: 20.0,),
                            Text("Add to cart",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black
                            ),
                            )


                          ],
                        ),
                      )

                    ],
                  ),
                ),
              )









            ],
          ),
        ),
      ),
    );
  }
}


