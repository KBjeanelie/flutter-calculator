import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  Widget buildButtom(String buttonText, double buttonHeight, Color buttonColor)
  {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: const BorderSide(
            width: 1,
            color: Colors.white,
            style: BorderStyle.solid
          )
        ),
        onPressed: null,
        padding: const EdgeInsets.all(16.0),
        child: Text(buttonText, style: const TextStyle(fontSize: 38.0, fontWeight: FontWeight.normal, color: Colors.white),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Calculator"),),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 2),
            child: const Text("0", style: TextStyle(fontSize: 40),)
          ),
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 2),
              child: const Text("resultat", style: TextStyle(fontSize: 30),)
          ),
          const Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75 ,
                child: Table(
                  children: [
                    TableRow(
                        children: [
                          buildButtom("C", 1, Colors.redAccent),
                          buildButtom("⌫", 1, Colors.blue),
                          buildButtom("÷", 1, Colors.blue)
                        ]
                    ),
                    TableRow(
                      children: [
                        buildButtom("7", 1, Colors.black54),
                        buildButtom("8", 1, Colors.black54),
                        buildButtom("9", 1, Colors.black54)
                      ]
                    ),

                    TableRow(
                        children: [
                          buildButtom("4", 1, Colors.black54),
                          buildButtom("5", 1, Colors.black54),
                          buildButtom("6", 1, Colors.black54)
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButtom("1", 1, Colors.black54),
                          buildButtom("2", 1, Colors.black54),
                          buildButtom("3", 1, Colors.black54)
                        ]
                    ),

                    TableRow(
                        children: [
                          buildButtom(".", 1, Colors.black54),
                          buildButtom("0", 1, Colors.black54),
                          buildButtom("00", 1, Colors.black54)
                        ]
                    ),
                  ],
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width * .25,
                child: Table(
                  children: [
                    TableRow(children: [buildButtom("×", 1, Colors.blue)]),
                    TableRow(children: [buildButtom("-", 1, Colors.blue)]),
                    TableRow(children: [buildButtom("+", 1, Colors.blue)]),
                    TableRow(children: [buildButtom("=", 2, Colors.redAccent)])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

