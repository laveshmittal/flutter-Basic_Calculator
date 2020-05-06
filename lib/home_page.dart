import 'package:flutter/material.dart';

const kButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int output = 0;
  bool showOutput = false;
  TextEditingController firstNum = TextEditingController();

  TextEditingController secondNum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              showOutput
                  ? Text(
                      'OUTPUT: $output',
                      style: TextStyle(fontSize: 30.0),
                    )
                  : Text(" "),
              TextField(
                controller: firstNum,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter first num",
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              TextField(
                controller: secondNum,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter second num",
                  border: OutlineInputBorder(borderSide: BorderSide()),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        int var1 = int.parse(firstNum.text);

                        int var2 = int.parse(secondNum.text);
                        output = var1 + var2;
                        showOutput = true;
                      });
                    },
                    child: Text(
                      '+',
                      style: kButtonTextStyle,
                    ),
                    color: Colors.lightBlueAccent,
                    elevation: 1.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        int var1 = int.parse(firstNum.text);

                        int var2 = int.parse(secondNum.text);
                        output = var1 - var2;
                        showOutput = true;
                      });
                    },
                    child: Text(
                      '-',
                      style: kButtonTextStyle,
                    ),
                    color: Colors.redAccent,
                    elevation: 1.0,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        int var1 = int.parse(firstNum.text);

                        int var2 = int.parse(secondNum.text);
                        output = var1 * var2;
                        showOutput = true;
                      });
                    },
                    child: Text(
                      '*',
                      style: kButtonTextStyle,
                    ),
                    color: Colors.green,
                    elevation: 1.0,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        int var1 = int.parse(firstNum.text);

                        int var2 = int.parse(secondNum.text);
                        output = (var1 / var2).round();
                        showOutput = true;
                      });
                    },
                    child: Text(
                      '/',
                      style: kButtonTextStyle,
                    ),
                    color: Colors.yellow,
                    elevation: 1.0,
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    int var1 = int.parse(firstNum.text);

                    int var2 = int.parse(secondNum.text);
                    output = var1 % var2;
                    showOutput = true;
                  });
                },
                child: Text(
                  '%',
                  style: kButtonTextStyle,
                ),
                color: Colors.grey.shade100,
                elevation: 1.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
