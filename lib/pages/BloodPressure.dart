import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BloodPressure extends StatelessWidget {
  const BloodPressure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("Blood Pressure"),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ghislain",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
            SizedBox(height: 50,),
            customCard(
                "SYS",
                "99.0",
                "bpm",
            ),
            SizedBox(height: 20,),
            customCard(
                "DIA",
                "125.0",
                "bpm",
            ),
            SizedBox(height: 20,),
            customCard(
                "HEART RATE",
                "36",
                "deg",
            ),
            // SizedBox(height: 50,),
            // MaterialButton(
            //   minWidth: double.infinity,
            //   height: 50,
            //   onPressed: () {},
            //   color: Color(0xff00ff2a),
            //   elevation: 0,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10),
            //
            //   ),
            //   child: Text(
            //     "Start", style: TextStyle(
            //     fontWeight: FontWeight.w600,
            //     fontSize: 18,
            //     color: Colors.white,
            //
            //   ),
            //   ),
            //
            // ),
          ],
        ),
      ),
    );
  }
}

Widget customCard(String title, String value, String unit){
  return  Container(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    unit,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}