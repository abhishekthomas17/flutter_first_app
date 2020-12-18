import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'skills.dart';
import 'skill_card.dart';

void main() {
  runApp(MaterialApp(
    home: CardApp(),
      
  ));
}


class CardApp extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<CardApp> {

  int level = 0;
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<Skill> skills = [
    Skill(name:"Django",
        description: "Django is a high-level Python Web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It's free and open source."),
    Skill(name:"Bootstrap",
        description: "Bootstrap is a free and open-source CSS framework directed at responsive, mobile-first front-end web development. It contains CSS- and JavaScript-based design templates for typography, forms, buttons, navigation, and other interface components"),
    Skill(name:"React",
        description: "React is an open-source, front end, JavaScript library for building user interfaces or UI components. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications"),

  ];

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar : AppBar(
        title: Text(
            "Card app"
        ),
        centerTitle:true,
        backgroundColor:Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(()
          {
            level+=1;
          });
        },
        child : Icon(
          Icons.add
        ),
        backgroundColor:Colors.grey[800]
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.fromLTRB(20,40,20,20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/architecture-1122359_1920.jpg'
                  ),
                  radius:55
                ),
              ),
              Divider(
                  height:60,
                  color:Colors.white
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color:Colors.grey,
                  letterSpacing: 2,
                  fontSize:20,
                )
              ),
              SizedBox(height:10),
              Text(
                  "Abhishek Thomas",
                  style: TextStyle(
                    color:Colors.white,
                    letterSpacing: 2,
                    fontSize:25,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height:40),
              Text(
                  "JOB",
                  style: TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2,
                    fontSize:16,
                    fontWeight: FontWeight.bold,
                  )
              ),SizedBox(height:10),
              Text(
                  "Python Developer Level - $level",
                  style: TextStyle(
                    color:Colors.white,
                    letterSpacing: 2,
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height:40),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size:40,
                    color:Colors.grey
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(12,0,0,0),
                    child: Text(
                      "abhishekthoms@gmail.com",
                      style:TextStyle(
                        color:Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  )
                ],
              ),
              SizedBox(height:40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Skills",
                      style:TextStyle(
                        color:Colors.grey,
                        fontSize: 25,
                        letterSpacing: 2,
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,0),
                    child: FlatButton.icon(
                      onPressed: (){
                        showDialog(
                          barrierDismissible: false,
                          barrierColor: Colors.grey[900],
                          context:context,
                          builder:(BuildContext context)
                            {
                              return Container(
                                child: Form(
                                  key:_formKey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height:20),
                                      Container(
                                          child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children:[
                                                Text(
                                                  "Name",
                                                    style:TextStyle(
                                                        color:Colors.white,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold,
                                                      letterSpacing: 2,
                                                      fontStyle: FontStyle.italic,
                                                      decoration: TextDecoration.none,

                                                    )
                                                ),
                                                SizedBox(height:10),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 20),
                                                  child: Material(
                                                    child: TextFormField(

                                                      controller: myController,
                                                      validator: (value) {
                                                        if (value.isEmpty) {
                                                          return 'Please enter some text';
                                                        }
                                                        return null;
                                                      },

                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height:50),
                                                Text(
                                                    "Description",
                                                    style:TextStyle(
                                                        color:Colors.white,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold,
                                                        letterSpacing: 2,
                                                        fontStyle: FontStyle.italic,
                                                      decoration: TextDecoration.none,
                                                    )
                                                ),
                                                SizedBox(height:20),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical:5,horizontal: 20),
                                                  child: Material(
                                                    child: TextFormField(
                                                      maxLines:8,
                                                      controller: myController1,
                                                      validator: (value) {
                                                        if (value.isEmpty) {
                                                          return 'Please enter some text';
                                                        }
                                                        return null;
                                                      },

                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height:40),

                                              ]
                                          )
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FlatButton(
                                              onPressed: () {
                                                if (!_formKey.currentState.validate())
                                                  {

                                                  }

                                                else {
                                                  setState(() {
                                                    skills.insert(0,Skill(name:myController.text
                                                        ,description: myController1.text));

                                                  });
                                                  myController.text = "";
                                                  myController1.text = "";
                                                  Navigator.of(context).pop();
                                                }

                                              },
                                              color:Colors.green,
                                              child:Text(
                                                  "Add Skill"
                                              )
                                          ),
                                          FlatButton(
                                            onPressed: () {
                                              myController.text="";
                                              myController1.text="";
                                              Navigator.of(context).pop();
                                            },
                                            color:Colors.red,
                                            child:Text(
                                              "Go back"
                                            )
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ),
                              );
                            }

                        );

                      },
                      icon:Icon(
                          Icons.add,
                          color:Colors.black,
                          size:30,
                      ),
                      color:Colors.green[500],
                      label:Text(
                        "Add"
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height:35,
                color:Colors.white
              ),
              Container(
                margin:EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: skills.map((skill) =>
                      SkillWidget(
                          skill:skill,
                          delete:() {
                            setState(() {
                              skills.remove(skill);
                            });
                          })
                  ).toList(),

                ),
              ),
            ],

          )
        ),
      )


    );
  }
}



