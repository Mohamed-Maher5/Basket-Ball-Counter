import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:last_time/basketWinnerResult_Screen.dart';

class basketCounter extends StatefulWidget{
  @override
  State<basketCounter> createState() => _basketCounterState();
}

class _basketCounterState extends State<basketCounter> {

  int teamAScore = 0;
  int teamBScore = 0;

  Widget build(BuildContext context){
    return Scaffold(
      appBar:
      AppBar(
          backgroundColor: Colors.orange,
          title:Text('BasketBall Counter App')
        ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Team A',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('${teamAScore}',style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamAScore+=1;
                              });
                            },
                            child : Text('Add 1 point'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamAScore+=2;
                              });
                            },
                            child : Text('Add 2 point'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamAScore+=3;
                              });
                            },
                            child : Text('Add 3 point'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 2,
                  height: 300,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('Team B',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('${teamBScore}',style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamBScore+=1;
                              });
                            },
                            child : Text('Add 1 point'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamBScore+=2;
                              });
                            },
                            child : Text('Add 2 point'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          height: 40,
                          width: 160,
                          color: Colors.orange,
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                teamBScore+=3;
                              });
                            },
                            child : Text('Add 3 point'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.circular(7),
                    color: Colors.orange,
                  ),
                  height: 40,
                  width: 180,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => result(
                            teamAScore,teamBScore
                          ),
                       ),
                      );
                    },
                    child: Text('Print the Winner'),
                  ),
                ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.circular(7),
                  color: Colors.orange,

                ),
                height: 40,
                width: 100,
                child: MaterialButton(
                  onPressed: (){
                    setState(() {
                      teamAScore = 0;
                      teamBScore = 0;
                    });
                  },
                  child: Text('Reset'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}