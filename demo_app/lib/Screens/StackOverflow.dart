import 'package:flutter/material.dart';

class StackOverflowPage extends StatelessWidget {
  const StackOverflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Stack Over Flow',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.arrow_forward_ios,
          color: Colors.white,),
        ],

      ),

      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Colors.black12,
        child: Stack(

          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25.0
                    )
                  ]
                ),
                height: 200,
                width: 300,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 30,),
                    Text('Maria Elliot',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    ),
                    Text('Albany, New York',
                    style: TextStyle(
                      color: Colors.blue,
                    ),),
                    Container(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text('Purchased',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                ),),
                                Text('12K',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),)
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                                Text('Wished',
                                  style: TextStyle(
                                      color: Colors.grey,
                                    fontSize: 20,

                                  ),),
                                Text('12K',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),)
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                                Text('Likes',
                                  style: TextStyle(
                                      color: Colors.grey,
                                    fontSize: 20,
                                  ),),
                                Text('12K',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),)
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 228.0),
              child: ClipOval(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25.0
                      )
                    ]
                  ),
                  child: Icon(Icons.person),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
