import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget{
  int ? score1;
  int ? score2;
  result(
      @required this.score1,
      @required this.score2,
      );
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Winner'),
      ),
      body: Stack(
        children: [
          //Text('Winner'),
          Image(image: AssetImage('images/basketball.png'),fit : BoxFit.cover,height: double.infinity,width: double.infinity,),
             Padding(
               padding: const EdgeInsets.only(top: 50),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${score1! > score2! ? 'Team A' : ''}',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),),
                  Text('${score1! == score2! ? 'No Winner' : ''}',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),),
                  Text('${score1! < score2! ? 'Team B' : ''}',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),),
                ],
            ),
             ),

        ],
      )
    );
  }
}