import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'IcyRobins';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}
class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController()..text="0";
  TextEditingController num2controller = new TextEditingController()..text="0";
  TextEditingController num3controller = new TextEditingController()..text="0";


  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[

              Text(" Vanilla- Rs 40  ",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              Text("Enter Quantity: ",style: TextStyle(fontSize: 20),),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(" Chocolate- Rs 45  ",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              Text("Enter Quantity: ",style: TextStyle(fontSize: 20),),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(" Strawberry- Rs 35  ",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
              Text("Enter Quantity: ",style: TextStyle(fontSize: 20),),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num3controller,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Total Price",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                onPressed : () {
                  setState(() {
                    int sum = int.parse(num1controller.text)*40 + int.parse(num2controller.text)*45 +int.parse(num3controller.text)*35;
                    result = sum.toString();
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Amount to be paid:",
                style: TextStyle(
                  fontSize: 30,
                ),),
              Text(result,
                style: TextStyle(
                  fontSize: 30,
                ),),
            ],
          ),
        ],
      ),
    );
  }
}