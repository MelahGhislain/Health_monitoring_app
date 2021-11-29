import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_monitoring_app/pages/BloodPressure.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.apartment),
          onPressed: (){},
        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(

          children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "November 29, 2021",
                        style: TextStyle(
                          // fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            SizedBox(height: 20,),
              customCard(
                "Pulse",
                "99.0",
                "bpm",
                  (){}
              ),

              customCard(
                  "Blood Pre",
                  "125.0",
                  "bpm",
                      (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> BloodPressure()));
                      }
              ),
              customCard(
                  "Temp",
                  "36",
                  "deg",
                      (){}
              ),
          ],
        ),
      ),
    );
  }
}

Widget customCard(String title, String value, String unit, Function goTo){
  return  Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
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
          child: Row(
            children: [
              Text(
                "10:15 AM",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              IconButton(
                  onPressed: (){goTo();},
                  icon: Icon(Icons.arrow_forward_ios_outlined,),
                iconSize: 20,
              )
            ],
          ),
        ),
      ],
    ),
  );
}