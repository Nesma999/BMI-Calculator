import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final bool gender;
  final double result;
  final int age;
  BMIResultScreen({
    @required this.age,
    @required this.gender,
    @required this.result,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Center(
          child: Text(
            'BMI CALCULATOR RESULT',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 80.0, horizontal: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                gender?
                Image(
                  image:  AssetImage('assets/images/male.png'),
                  height: 120.0,
                  width: 120.0,
                ):Image(
                  image:  AssetImage('assets/images/female.png'),
                  height: 120.0,
                  width: 120.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text(
                    'Gender:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    ),
                    Text(
                      '${gender ? 'Male' : 'Female'}',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text(
                    'Result:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                    Text(
                      '${result.round()}',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                 ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Text(
                    'Age:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                    Text(
                      '$age',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    )
                 ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
