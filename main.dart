import 'package:flutter/material.dart';

void main() {
  runApp(
    SimpleSumApp(),
  );
}

class SimpleSumApp extends StatelessWidget {
  const SimpleSumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Sum App',
      home: HomePageActivity(),
    );
  }
}

class HomePageActivity extends StatefulWidget {
  const HomePageActivity({Key? key}) : super(key: key);
  @override
  State<HomePageActivity> createState() => _HomePageActivityState();
}

class _HomePageActivityState extends State<HomePageActivity> {

  double sum = 0;
  late double firstNumber;
  late double secondNumber;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Sum App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),child: Center(child: Text('$sum',style: TextStyle(fontSize: 25),),),),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Number',
              ),
              onChanged: (input){
                setState(() {
                  if(double.parse(input)>0){
                    firstNumber = double.parse(input);
                  }
                  else
                    firstNumber = 0;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Second Number',
              ),
              onChanged: (input){
                setState(() {
                  if(double.parse(input)>0){
                    secondNumber = double.parse(input);
                  }
                  else
                    secondNumber = 0;
                });
              },
            ),
          ),
          Container(
            height: 90,
            width: double.infinity,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(),
                  child: Text('ADD'),
                  onPressed: (){
                    setState(() {
                      sum = firstNumber + secondNumber;
                    });
                  },
                )
            ),
          )
        ],
      )

    );
  }
}
