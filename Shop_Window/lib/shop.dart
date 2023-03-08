import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(

        // color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 100,

                    color: Colors.white,
                    // print('say');
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 220,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("MEN'S ORIGINAL"),
                        SizedBox(height: 5,),
                        Text('Smiths Shoes',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 30.0
                            ),),
                      ],
                    ),
                  ),
                  Container(

                    color: Colors.white,
                    height: 90,
                    width: 73,

                    child:  Icon(
                      Icons.shopping_bag_outlined,
                      size: 50,
                    ),
                  )
                ],
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              color: Colors.white,
              child: Image.network("https://thumbs.dreamstime.com/b/shoe-isolated-white-background-green-single-195770288.jpg"),

            ),

            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('A style icon gets some love .The design of shoes has varied enormously '
                    'through time and from culture to culture, with form originally being tied to function',
                  style:
                    GoogleFonts.playball(color:Colors.red,fontSize: 12)
              ),
            ),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      children: [
                        Text('COLOR',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),),
                        SizedBox(width: 230,),
                        Text('Size',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      
                      SizedBox(width: 20,),
                      ClipOval(
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipOval(
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipOval(
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipOval(
                        child: Container(
                          height: 30,
                          width: 30,
                          color: Colors.pink,
                        ),
                      ),
                      SizedBox(width: 150,),
                      Text('10.1',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),),
                    ],
                  )
                ],
              ),

            ),
            Container(

              width: MediaQuery.of(context).size.width,
              height: 180,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Text('ADD TO BAG >',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,

                    ),),
                    SizedBox(width: 170,),
                    Text('\$95',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ) ,

            ),
          ],

        ),
          ),

    );
  }
}

