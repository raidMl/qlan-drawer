import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/screens/result_page.dart';
import '../components/reusible_card.dart';
import '../components/icon_content.dart';
import '../constant.dart';
import 'result_page.dart';
import '../components/bottomButton.dart';
import '../components/roundButton.dart';
import 'package:untitled1/calcBrain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactivecolor;
  Color femaleCardColor = kinactivecolor;
  kGender? selectedGender;
  int height = 180;
  int weight = 75;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFF1B6DDB),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30.0),
              Image(
                height: 40.0,
                width: 40.0,
                image: AssetImage("Mobile note list-cuate.png"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("QuizerLan"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //vertical
        children: <Widget>[
          SizedBox(height: 20.0),
          const Expanded(
            child: Text(
              "Quizzer Lan ",
              textAlign: TextAlign.center,
              style: kquizerLan,
            ),
          ),

          // child: CircleAvatar(
          //   backgroundImage: AssetImage("images/Customer Survey-rafiki.png"),
          //   radius: 2.0,
          // ),
          Expanded(
            flex: 4,
            child: Image(
              image: AssetImage('images/Customer Survey-rafiki.png'),
            ),
          ),

          RoundIconButton(
            icon: Icons.create,
            onPress: null,
            color: 0xff1A73E8,
            txt: "Create quiz",
          ),

          RoundIconButton(
            icon: Icons.login,
            onPress: null,
            color: 0xff274670,
            txt: "Join",
          ),

          // bottomButton(
          //     ontap: () {
          //       CalcBrain calculateBrain =
          //           CalcBrain(height: height, weight: weight);
          //
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return Result(
          //               bmiResult: calculateBrain.calculateBmi(),
          //               bmiResultTxt: calculateBrain.getResult(),
          //               bmiResultInterpretation:
          //                   calculateBrain.getInterpretation(),
          //             );
          //           },
          //         ),
          //       );
          //     },
          //     text: "CALCULATE"),
          // bottomButton(
          //     ontap: () {
          //       CalcBrain calculateBrain =
          //           CalcBrain(height: height, weight: weight);
          //
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return Result(
          //               bmiResult: calculateBrain.calculateBmi(),
          //               bmiResultTxt: calculateBrain.getResult(),
          //               bmiResultInterpretation:
          //                   calculateBrain.getInterpretation(),
          //             );
          //           },
          //         ),
          //       );
          //     },
          //     text: "CALCULATE"),
        ],
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(accentColor: Colors.purple),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// Container(
// decoration: BoxDecoration(
// color: Color(0xff1d1e33),
// borderRadius: BorderRadius.circular(10.0),
// ),
// margin: EdgeInsets.all(15.0),
// ),
