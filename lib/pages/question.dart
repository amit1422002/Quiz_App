import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/service/database.dart';

class Question extends StatefulWidget {
  String category;
  Question({required this.category});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  bool show = false;
  getontheload() async {
    QuizStream = await DatabaseMethods().getCategoryQuiz(widget.category);
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Stream? QuizStream;
  PageController controller = PageController();
  Widget allQuiz() {
    return StreamBuilder(
        stream: QuizStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? PageView.builder(
                  controller: controller,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(32))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 40),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      ds["Image"],
                                      height: 300,
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 40),
                                child: GestureDetector(
                                  onTap: (){
                                    show = true;
                                    setState(() {
                                      
                                    });
                                  },
                                  child:show ? Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: ds["correct"]==ds["Option1"]? Colors.green:Colors.red,width: 2),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                     
                                      ds["Option1"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ):Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Color(0xFF818181)),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option1"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 20),
                                child: GestureDetector(
                                  onTap: (){
                                    show = true;
                                    setState(() {
                                      
                                    });
                                  },
                                  child:show ? Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color:ds["correct"]==ds["Option2"]? Colors.green:Colors.red,width: 2 ),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option2"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ):Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color:Color(0xFF818181)),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option2"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 20),
                               child: GestureDetector(
                                  onTap: (){
                                    show = true;
                                    setState(() {
                                      
                                    });
                                  },
                                  child:show ? Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color:ds["correct"]==ds["Option3"]? Colors.green:Colors.red,width: 2),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option3"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ):Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color:Color(0xFF818181)),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option3"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 20),
                                child: GestureDetector(
                                  onTap: (){
                                    show = true;
                                    setState(() {
                                      
                                    });
                                  },
                                  child:show ? Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color:ds["correct"]==ds["Option4"]? Colors.green:Colors.red,width: 2),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option4"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ):Container(
                                    padding: EdgeInsets.all(8),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Color(0xFF818181)),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Text(
                                      ds["Option4"],
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                
                              ),
                              SizedBox(height: 20,),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    show=false;
                                  });
                                  controller.nextPage(duration: Duration(milliseconds:200), curve: Curves.easeIn);
                                },
                                child: Row(
                                
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(right: 25),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(20)),
                                      
                                      child: Icon(Icons.arrow_forward_ios_outlined,color:Color(0xFF004840))),
                                  ],
                                ),
                              )
                            ],
                          )),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF004840),
        body: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: Color(0xFFf35b32)),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ))),
                  SizedBox(width: 130),
                  Text(
                    widget.category,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: allQuiz()),
          ]),
        ));
  }
}
