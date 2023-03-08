import 'package:flutter/material.dart';

class ShowRegisterPage extends StatelessWidget {
  const ShowRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Registration Form'),
      ),

      body: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          right: 10.0,
          bottom: 25.0,
          left: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter name',
                hintText: 'Full Name',
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Mobile Number',
                hintText: 'Mobile Number',
                icon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 30.0)
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Email',
                hintText: 'Email ID',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Address',
                hintText: 'Address',
                icon: Icon(Icons.location_on),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Enter Password',
                hintText: 'Password',
                icon: Icon(Icons.vpn_key),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                labelText: 'Confirm Password',
                hintText: 'Confirm Password',
                icon: Icon(Icons.vpn_key),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30,),
            TextButton(
                onPressed: () {},
                child: Text('Register'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(
                fontSize: 20,
              ),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),

            ),),

          ],
        ),
      ),

    );
  }
}
