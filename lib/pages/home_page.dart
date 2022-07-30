import 'package:bmi/pages/widgets/constants/Colors.dart';
import 'package:bmi/pages/widgets/icon_content.dart';
import 'package:bmi/pages/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Gender selectedGender = Gender.female;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reuseableCard(
                        cardChild: iconcontent(icon: Icons.male, label: "Male"),
                        color: selectedGender == Gender.male
                            ? activatedColor
                            : inactivatedColor,
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        }),
                  ),
                  Expanded(
                    child: reuseableCard(
                        cardChild:
                            iconcontent(icon: Icons.female, label: "Female"),
                        color: selectedGender == Gender.female
                            ? activatedColor
                            : inactivatedColor,
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: reuseableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HEIGHT(cm)",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 102, 99, 89),
                        ),
                      ),
                      Text(
                        "${height.toString()}cm",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTickMarkColor:
                                  Color.fromARGB(255, 180, 78, 112),
                              thumbColor: Colors.pink,
                              overlayColor: Color.fromARGB(255, 54, 111, 177)),
                          child: Slider(
                              value: height.toDouble(),
                              min: 120,
                              max: 220,
                              onChanged: (double newheight) {
                                setState(() {
                                  height = newheight.round();
                                });
                              }))
                    ],
                  ),
                  color: Colors.amber,
                  onPress: () {}),
            ),
            Row(
              children: [
                Expanded(
                  child: reuseableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT(kg)",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 102, 99, 89),
                            ),
                          ),
                          Text(
                            "${weight.toString()}kg",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        ],
                      ),
                      color: activatedColor,
                      onPress: () {}),
                ),
              ],
            ),
          ],
        ));
  }
}
