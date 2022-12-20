import 'package:flutter/material.dart';
import 'package:memoir_apk/MyTextField.dart';
import './TsClip2.dart';
import './ElevatedButton.dart';

class form extends StatefulWidget {
  const form({Key? key}) : super(key: key);

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  double memory= 0.0;
  double SourceC = 0.0;
  double Presentation = 0.0;
  double Answers = 0.0;
  var a = new TextEditingController();
  var b = new TextEditingController();
  var c = new TextEditingController();
  var d = new TextEditingController();
  var e = new TextEditingController();
  var f = new TextEditingController();
  var g = new TextEditingController();
  var h = new TextEditingController();
  var i = new TextEditingController();
  var j = new TextEditingController();
  var k = new TextEditingController();
  var l = new TextEditingController();


  void submit() {
    Navigator.of(context).pop();
  }
 test(){
    if(a.text.isEmpty || b.text.isEmpty || c.text.isEmpty || d.text.isEmpty || e.text.isEmpty || f.text.isEmpty ||
    g.text.isEmpty || h.text.isEmpty || i.text.isEmpty || j.text.isEmpty || k.text.isEmpty || l.text.isEmpty
    ){
       return Container(
         child: Text('Fill out all of yourTextfields'),
       );
    }
}
  Future openDialog(double res) => showDialog(

      context: context,
      builder: (context) => AlertDialog(
            title: Text('The Final Result Is :'),
            content: Text('$res'),
            actions: [TextButton(onPressed: submit, child: Text('Go Back'))],
          ));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // title: Text('Calculater',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
          // centerTitle: true,
          backgroundColor: Colors.teal,
          shadowColor: Colors.black,
          bottom: TabBar(tabs: [
            Tab(text: 'Memory'),
            Tab(text: 'Code'),
            Tab(text: 'Presenting'),
            Tab(text: 'Questions'),
          ]),
        ),

        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: Center(
                child: Column(
                  children: [
                                    myTextField('Memory organization', 'point  (maximum 0.5/3)',a),
                                    myTextField('Editorial quality', 'point  (maximum 1/3)',b),
                                    myTextField('Quality of the bibliography', 'point  (maximum 0.5/3)',c),
                                    myTextField('Scientific content', 'point  (maximum 1/3)',d),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: Center(
                child: Column(
                  children: [
                                    myTextField('Ergonomics / clarity of analysis', 'point  (maximum 1/4)',e),
                                    myTextField('Development effort / Analysis: originality', 'point  (maximum 1/4)',f),
                                    myTextField('Quality of results', 'point  (maximum 1/4)',g),
                                    myTextField('Mastery of tools', 'point  (maximum 1/4)',h),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: Center(
                child: Column(
                  children: [
                                    myTextField('Presentation quality', 'point  (maximum 1/3)',i),
                                    myTextField('Fluent oral expression', 'point  (maximum 1/3)',j),
                                    myTextField('Well-posed problem', 'point  (maximum 1/3)',k),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: Center(
                child: Column(
                  children: [
                    myTextField('Relevance and quality of responses on the scientific plan', 'point  (maximum 2/2)',l),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height:50,
          width:130,


          child:FloatingActionButton(
            backgroundColor: Colors.teal,
            child:  Text('Result'),//child widget inside this button
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
            ),
            onPressed: (){
              memory = double.parse(a.text)+double.parse(b.text)+double.parse(c.text)+double.parse(d.text);
              SourceC= double.parse(e.text)+double.parse(f.text)+double.parse(g.text)+double.parse(h.text);
              Presentation = double.parse(i.text)+double.parse(j.text)+double.parse(k.text);
              Answers = double.parse(l.text);
              var res = memory+SourceC+Presentation+Answers;
              openDialog(res);
            },
          ),
        ),
      ),
    );
  }
}
