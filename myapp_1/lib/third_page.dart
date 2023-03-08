import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Third Page '),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          PopupMenuButton(
              icon: Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('Logout')),
                ];
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Network Image',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Center(
                    child: Container(
                        height: 200,
                        width: 150,

                        decoration: BoxDecoration(
                          color: Colors.teal,
                          image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY9pV6v1WkLJDLzOT5xCw0g7lpj7I2OxoUWWak3uw9aE5UKcs0caSyHyk38oTUYeek08&usqp=CAU"),
                              // image: AssetImage("assets/images/img1.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),
                        child: SingleChildScrollView(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star),
                                  Center(child: Text(
                                    'Hello',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                                ],
                              ),

                              Text(
                                'Guys',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Good Afternoon',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Center(
                    child: Container(
                        height: 200,
                        width: 150,

                        decoration: BoxDecoration(
                          color: Colors.teal,
                          image: DecorationImage(
                            // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY9pV6v1WkLJDLzOT5xCw0g7lpj7I2OxoUWWak3uw9aE5UKcs0caSyHyk38oTUYeek08&usqp=CAU"),
                              image: AssetImage("assets/images/img2.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),
                        child: SingleChildScrollView(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star),
                                  Center(child: Text(
                                    'Hello',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                                ],
                              ),

                              Text(
                                'Guys',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Good Afternoon',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Center(
                    child: Container(
                        height: 200,
                        width: 150,

                        decoration: BoxDecoration(
                          color: Colors.teal,
                          image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY9pV6v1WkLJDLzOT5xCw0g7lpj7I2OxoUWWak3uw9aE5UKcs0caSyHyk38oTUYeek08&usqp=CAU"),
                              // image: AssetImage("assets/images/img2.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),
                        child: SingleChildScrollView(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.star),
                                  Center(child: Text(
                                    'Hello',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                                ],
                              ),

                              Text(
                                'Guys',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Good Afternoon',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Are you Listening',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'See Image One',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),

            Container(
                height: 200,
                width: 350,

                decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                    // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY9pV6v1WkLJDLzOT5xCw0g7lpj7I2OxoUWWak3uw9aE5UKcs0caSyHyk38oTUYeek08&usqp=CAU"),
                      image: AssetImage("assets/images/img1.jpg"),
                      fit: BoxFit.fill
                  ),
                ),
                child: SingleChildScrollView(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.star),
                          Center(child: Text(
                            'Hello',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          )),
                        ],
                      ),

                      Text(
                        'Guys',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Good Afternoon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            Center(child: Text(
              'See Image Two',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            )),

            Container(
                height: 200,
                width: 350,

                decoration: BoxDecoration(
                  color: Colors.teal,
                  image: DecorationImage(
                    // image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLY9pV6v1WkLJDLzOT5xCw0g7lpj7I2OxoUWWak3uw9aE5UKcs0caSyHyk38oTUYeek08&usqp=CAU"),
                      image: AssetImage("assets/images/img2.jpg"),
                      fit: BoxFit.fill
                  ),
                ),
                child: SingleChildScrollView(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.star),
                          Center(child: Text(
                            'Hello',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          )),
                        ],
                      ),

                      Text(
                        'Guys',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Good Afternoon',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Are you Listening',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}