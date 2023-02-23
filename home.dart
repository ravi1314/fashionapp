import 'package:flutter/material.dart';
import 'package:shopping/pages/todotile.dart';



class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  List toDoList = [
    ["make titit",false],
    ["done",false]
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: Text("To DoApp",textAlign: TextAlign.center,),
          elevation: 0,
        ),
        body: ListView.builder(itemCount: toDoList.length,
          itemBuilder:((context, index){
            return Todotile(TaskName: toDoList[index], TaskCompleted: TaskCompleted, onChanged: onChanged)

        } )
      
      
    );
  }
}