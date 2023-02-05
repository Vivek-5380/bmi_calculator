import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 55.0;
const activeCardColour = Color(0x663D3C42);
const bottomContainerColour = Color(0x895A8F7B);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ResuableCard(
                      colour: activeCardColour,
                      cardChild: Column(
                        children: const <Widget>[
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                              'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFF1F1F1)
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                      colour: activeCardColour
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: ResuableCard(
                  colour: activeCardColour
              ),
            ),
          ),
          Expanded(
            child: Row(
              children:  <Widget>[
                Expanded(
                  child: ResuableCard(
                      colour: activeCardColour
                  ),
                ),
                Expanded(
                  child: ResuableCard(
                      colour: activeCardColour,
                  )
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ResuableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  const ResuableCard({required this.colour,this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
