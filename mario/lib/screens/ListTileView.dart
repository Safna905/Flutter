import 'package:flutter/material.dart';

class MarioPage extends StatelessWidget {
  const MarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Container(

              height:270,
              color: Colors.white,
              child: Column(
                children: [
                  Container(

                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red,
                    child: Text('Mario',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),),
                  ),
                Row(
                      children: [
                        Container(
                          height: 200,
                          width: 125,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.network('https://supermariorun.com/assets/img/stage/mario03.png'),
                              SizedBox(height: 10,),
                              Container(

                                width: 120,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[100],
                                    ),
                                    child: Text('Mario 0',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),)
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 200,
                          width: 125,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.network('https://supermariorun.com/assets/img/stage/mario03.png'),
                              SizedBox(height: 10,),
                              Container(
                                width: 120,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[100],
                                    ),
                                    child: Text('Mario 1',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 200,
                          width: 125,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.network('https://supermariorun.com/assets/img/stage/mario03.png'),
                              SizedBox(height: 10,),
                              Container(

                                width: 120,
                                child: Container(

                                  width: 120,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        showDialog(context: context,
                                            builder: (context) => AlertDialog(
                                              title: Text("You Want to exit"),
                                              actions: [
                                                OutlinedButton(
                                                    onPressed: () {},
                                                    child:Icon(Icons.delete),
                                                )
                                              ],
                                            ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[100],
                                      ),
                                      child: Text('Mario 2',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),)
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(

              height:270,
              color: Colors.white,
              child: Column(
                children: [
                  Container(

                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.green,
                    child: Text('Mickey Mouse',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 200,
                        width: 125,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.network('https://thumbs.dreamstime.com/b/disney-vector-illustration-mickey-mouse-isolated-white-background-who-laughs-closeup-character-smiles-big-eyes-165067930.jpg',
                            height: 150,),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                ),
                                child: Text('Mickey Mouse 0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        height: 200,
                        width: 125,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.network('https://thumbs.dreamstime.com/b/disney-vector-illustration-mickey-mouse-isolated-white-background-who-laughs-closeup-character-smiles-big-eyes-165067930.jpg',
                            height: 150,),
                            SizedBox(height: 10,),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[100],
                              ),
                              child: Text('Mickey Mouse 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        height: 200,
                        width: 125,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black12,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.network('https://thumbs.dreamstime.com/b/disney-vector-illustration-mickey-mouse-isolated-white-background-who-laughs-closeup-character-smiles-big-eyes-165067930.jpg',
                            height: 150,),
                            SizedBox(height: 10,),
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                ),
                                child: Text('Mickey Mouse 2',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),)
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

          Container(

          height:270,
          color: Colors.white,
          child: Column(
            children: [
              Container(

                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Text('Yoshi',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),),
              ),
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network('https://www.seekpng.com/png/detail/14-149392_mp9-yoshi-super-mario-bros-characters-png.png',
                        height: 150,),
                        SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[100],
                            ),
                            child: Text('Yoshi 0',
                              style: TextStyle(
                                color: Colors.black,
                              ),)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network('https://www.seekpng.com/png/detail/14-149392_mp9-yoshi-super-mario-bros-characters-png.png',
                        height: 150,),
                        SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[100],
                          ),
                          child: Text('Yoshi 1',
                            style: TextStyle(
                              color: Colors.black,
                            ),),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.network('https://www.seekpng.com/png/detail/14-149392_mp9-yoshi-super-mario-bros-characters-png.png',
                        height: 150,),
                        SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[100],
                            ),
                            child: Text('Yoshi 2',
                              style: TextStyle(
                                color: Colors.black,
                              ),)
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),


          ],
        ),
      ),
    );
  }
}
