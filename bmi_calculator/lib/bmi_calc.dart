import 'package:flutter/material.dart';

class CalculateBmi extends StatefulWidget {
  const CalculateBmi({Key? key}) : super(key: key);

  @override
  State<CalculateBmi> createState() => _CalculateBmiState();
}

class _CalculateBmiState extends State<CalculateBmi> {
  int currentindex = 0;
  String result ='';

  TextEditingController heightContrller = TextEditingController();
  TextEditingController weightContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                selectGender("Man", Colors.blue, 0),
                selectGender("Woman", Colors.pink, 1),
              ]),
              const SizedBox(
                height: 20.0,
              ),
              const Text('Your height in Cm :',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),),
              const SizedBox(height: 8.0,),
               TextField(
                 controller: heightContrller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Your height in Cm',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide : BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              const Text('Your weight in Kg :',
                style: TextStyle(
                  fontSize: 18.0,
                ),),
              const SizedBox(height: 8.0,),
              TextField(
                controller: weightContrller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Your weight in Kg',
                  filled: true,
                  fillColor: Colors.grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide : BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(
                  onPressed: () {
                    double height = double.parse(heightContrller.value.text);
                    double weight = double.parse(weightContrller.value.text);
                    calculateBmi(height, weight);
                  },
                  style:  ElevatedButton.styleFrom(
                    foregroundColor:Colors.white,
                    minimumSize:const Size(double.infinity, 50.0),
                  ),
                  child: const Text("Calculate",),
                  ),
              const SizedBox(height: 20.0,),
              const SizedBox(
                width: double.infinity,
                child:  Text('Your BMI is :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(height: 50.0,),
               SizedBox(
                width: double.infinity,
                child: Text('$result ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }

void calculateBmi(double height, double weight) {
    double finalresult = weight / (height * height / 10000);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi ;
    });
}

  void changeindex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget selectGender(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 70.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: currentindex == index ? color : Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0))),
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
            ),
          ),
          onPressed: () {
            changeindex(index);
          },
        ),
      ),
    );
  }
}
