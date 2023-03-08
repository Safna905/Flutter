import 'package:flutter/material.dart';


class CallLogEx extends StatefulWidget {
  const CallLogEx({Key? key}) : super(key: key);

  @override
  State<CallLogEx> createState() => _CallLogExState();
}

class _CallLogExState extends State<CallLogEx> {
  List<String> names=['John','merry','harry','nikil','zeba','mithun'];


  @override
  Widget build(BuildContext context) {
    var students;
    return  Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context,index){
          return ListTile(
            leading:ClipOval(
              child: Container(
                  height: 60,
                  width: 60,
                  child: Image( image: AssetImage("assets/images/${students[index]['image']}"),
                    fit: BoxFit.fill,)),
            ) ,
            title: Text(students[index]['name']),
            subtitle: Text(students[index]['email']),
            trailing: IconButton(onPressed: (){},icon: Icon(Icons.phone),),
          );

        },





      ),
    );
  }
}