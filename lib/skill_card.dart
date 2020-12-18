import 'package:flutter/material.dart';
import 'skills.dart';

class SkillWidget extends StatelessWidget {

  final Skill skill;
  final Function delete;
  SkillWidget({this.skill,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:EdgeInsets.fromLTRB(0, 20, 0, 20),
      color:Colors.grey[850],
      elevation:0,
      shadowColor: Colors.white,
      borderOnForeground: true,
      child : Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              skill.name,
              style:TextStyle(
                color:Colors.grey,
                fontSize: 22,
                letterSpacing: 2,
              ),
              textAlign:TextAlign.left,
            ),
            SizedBox(height:15),
            Text(
              skill.description,
              style:TextStyle(
                color:Colors.white,
                fontSize: 20,
              ),
              textAlign:TextAlign.left,
            ),
            SizedBox(height:15),
            FlatButton.icon(
              color:Colors.red,
                onPressed: () {delete();},
                icon: Icon(
                  Icons.delete,
                ),
                label: Text(
                  "Delete"
                )
            )
          ],
        ),
      ),
    );
  }
}