import 'package:flutter/material.dart';
void main() {
  runApp(Basketball_point_counter());
}
class Basketball_point_counter extends StatefulWidget {
  @override
  State<Basketball_point_counter> createState() => _Basketball_point_counterState();
}

class _Basketball_point_counterState extends State<Basketball_point_counter> {
  // This widget is the root of your application.
  int teamApoint =0;

  int teamBpoint=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold (
          appBar:AppBar(
            title:Text('Basketball scores points') ,
            backgroundColor:Colors.orange ,
          ),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height:430,
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                      children: [
                        Text('Team A' , style: TextStyle(fontSize: 40),),
                        Text('$teamApoint', style: TextStyle(fontSize: 90),),
                        ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamApoint++;
                            });
                          },

                          child: Text('+1 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            teamApoint+=2;
                          });
                        },
                          child: Text('+2 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            teamApoint+=3;
                          });
                        },
                          child: Text('+3 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 430,
                    child: VerticalDivider(
                      thickness: 3,
                      indent: 10,
                      endIndent: 10,

                    ),
                  ),
                  Container(
                    height:420,
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Team B' , style: TextStyle(fontSize: 40),),
                        Text('$teamBpoint', style: TextStyle(fontSize: 90),),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            teamBpoint++;
                          });
                        },
                          child: Text('+1 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            teamBpoint +=2;
                          });
                        },
                          child: Text('+2 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            teamBpoint+=3;
                          });
                        },
                          child: Text('+3 point'),
                          style:ElevatedButton.styleFrom(
                              backgroundColor:Colors.yellowAccent,
                              foregroundColor:Colors.black87,
                              minimumSize:Size(120, 40)),
                        ),
                      ],

                    ),
                  ),
                ],
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  teamApoint=0;
                  teamBpoint=0;
                });
              },
                child: Text('RESET'),
                style:ElevatedButton.styleFrom(
                    backgroundColor:Colors.yellow,
                    foregroundColor:Colors.black87,
                    minimumSize:Size(120, 40)),
              ),
            ],
          ) ,
        )
    );
  }}














