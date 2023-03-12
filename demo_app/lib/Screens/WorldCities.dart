import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<Map<String,dynamic>> cities = [
      {
        'name' : 'Delhi',
        'country' : 'India',
        'population' : '19 million',
        'image' : 'assets/images/lotus-temple-delhi.jpg'
      },
      {
        'name' : 'London',
        'country' : 'Britain',
        'population' : '8 million',
        'image' : 'assets/images/tower-bridge-shutterstock-1920x582.jpg'

      },
      {
        'name' : 'Vancouver',
        'country' : 'Canada',
        'population' : '2.4 million',
        'image' : 'assets/images/about-vancouver-facebook-size.jpg'

      },
      {
        'name' : 'New York',
        'country' : 'USA',
        'population' : '19 million',
        'image' : 'assets/images/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu_(cropped).jpg'

      },
      {
        'name' : 'Paris',
        'country' : 'France',
        'population' : '2.2 million',
        'image' : 'assets/images/eiffel-tower-in-paris-151-medium.jpg'

      },
      {
        'name' : 'Tokyo',
        'country' : 'Japan',
        'population' : '14 million',
        'image' : 'assets/images/CT-Tokyo-LP.jpg'

      },
      {
        'name' : 'Bangkok',
        'country' : 'Thailand',
        'population' : '8.3 million',
        'image' : 'assets/images/3af9262b-3d8b-40c6-b61d-e37ae1aa90aa.jpg'

      }
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        elevation: 10.0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Cites Around World',
            style:
            GoogleFonts.roboto(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
        ),
      ),

      body: ListView.builder(

          itemCount:cities.length ,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,

                child: Container(

                  height: 100,
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [

                      SizedBox(width: 8.0,),
                      Container(

                        child:Image.asset(cities[index]['image'],
                          width: 200,
                        fit: BoxFit.cover,) ,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cities[index]['name'],
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20
                              ),) ,
                            Text(cities[index]['country']),
                            Text('Population : ${cities[index]['population']}'),
                          ],
                        ),
                      ),
                    ],
                  ),

                  ) ,
                ),
              );
      }),
      
    );
  }
}
