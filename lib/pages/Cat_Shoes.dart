import 'package:flutter/material.dart';

class Cat_Shoes extends StatefulWidget {
  @override
  _Cat_ShoesState createState() => new _Cat_ShoesState();
}

class _Cat_ShoesState extends State<Cat_Shoes> {

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
        title: Text("All Shoes"),
        backgroundColor: Color(0xFF72286f),
      ),

      body: ListView(
        children: <Widget>[

          allData(context, shoes1, "New shoes", "This shoes is good", "\$50",
              "20"),
          allData(context, shoes2, "Women Dress", "This Dress is good", "\$90",
              "10"),
          allData(context, shoes3, "Women Dress", "This Dress is good", "\$90",
              "10"),
          allData(context, shoes4, "Women Dress", "This Dress is good", "\$90",
              "10"),
          allData(context, shoes5, "Women Dress", "This Dress is good", "\$90",
              "10"),
          allData(context, shoes6, "Women Dress", "This Dress is good", "\$90",
              "10"),
          allData(context, shoes7, "Women Dress", "This Dress is good", "\$90",
              "10"),


        ],
      ),
    );
  }

  Widget allData(BuildContext context, String img, String name, String des,
      String price, String Discount) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.all(5.0),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(img,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text(name,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 5.0,),

                  Text(des,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black
                    ),
                  ),

                  SizedBox(height: 5.0,),

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
                                    fontSize: 15.0,
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
                                color: Color(0xFF72286f)
                            ),
                            child: Center(
                              child: Text(Discount+" Off",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("-",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                              ),
                            ),
                          height: 40.0,
                          width: 60.0,
                          color: Color(0xFFe0dfe1)
                        ),
                        SizedBox(width: 15.0,),
                        Text("2",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                        ),
                        SizedBox(width: 15.0,),
                        Container(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("+",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            height: 40.0,
                            width: 60.0,
                            color: Color(0xFFe0dfe1)
                        ),



                      ],
                    ),
                  )


                ],
              ),
            )

          ],
        ),
      ),
    );
  }

}


