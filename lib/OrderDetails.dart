import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => new _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

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

      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            orderDetails(context, shoes1, "569865", "456", "Panding..")
          ],
        ),

      ),

    );
  }

  Widget orderDetails(BuildContext context, String img, String transaction,
      String amount, String status) {
    return Container(
      height: 250.0,
      margin: EdgeInsets.all(5.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.history, size: 20.0, color: Colors.black,),
                        SizedBox(width: 5.0,),
                        Text("Transaction No:",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.content_copy,
                    color: Colors.black,
                    size: 20.0,
                  )

                ],
              ),
            ),


            Container(
              margin: EdgeInsets.all(10.0),
              height: 2.0,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.black,
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total Amount:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),
                  ),
                  Text("\$"+amount,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  )

                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Status:",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                  ),
                  Text(status,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text("View Details",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue
                ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

}


