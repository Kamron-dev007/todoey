import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
 String? newTaskTittle ;

class AddNewTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Add Task',
              style: TextStyle(fontSize: 50, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              onChanged: (newText) {
                newTaskTittle = newText;
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Type in new task',
              ),
            ),
            TextButton(
              onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addNewTask(newTaskTittle!, false);
                  Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                elevation: 5,
                textStyle: TextStyle(fontSize: 20),
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
