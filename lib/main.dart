import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "Input";
  String result = "Result";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          calculate();
          // print("Pressed!");
        },
        child: Text(
          "=",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 28),
            child: Text(
              input,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          result == "Result"
              ? Container()
              : Padding(
                  padding:
                      const EdgeInsets.only(right: 24, top: 16, bottom: 32),
                  child: Text(
                    "Result = $result",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("1");
                    },
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("2");
                    },
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("3");
                    },
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("+");
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("4");
                    },
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("5");
                    },
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("6");
                    },
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("-");
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("7");
                    },
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("8");
                    },
                    child: Text(
                      "8",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("9");
                    },
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("*");
                    },
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput(".");
                    },
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("0");
                    },
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        input = "Input";
                        result = "Result";
                      });
                      //addToInput("AC");
                    },
                    child: Text(
                      "AC",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      addToInput("/");
                    },
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16),
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 70, height: 70),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (input == "Input") {
                          input = "s";
                        } else {
                          input = input.substring(0, input.length - 1);
                        }
                      });
                      //addToInput("<=");
                    },
                    child: Text(
                      "<=",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 80.0),
              //   child: Text(
              //     "@emamhasan19",
              //     style: TextStyle(
              //       color: Colors.grey,
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  addToInput(String s) {
    setState(() {
      if (input == "Input") {
        input = s;
      } else {
        input += s;
      }
    });
    // print(s);
  }

  calculate() {
    try {
      Parser p = Parser();
      Expression expression = p.parse(input);
      ContextModel cm = ContextModel();
      setState(() {
        double d = expression.evaluate(EvaluationType.REAL, cm);
        result = d.toString();
      });
    } catch (e) {
      print(
        e.toString(),
      );
    }
  }
}
