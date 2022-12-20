import 'package:flutter/material.dart';

class myTextField extends StatefulWidget {

  late String labelText;
  late String hintText;
  var myController= new TextEditingController();

  myTextField(this.labelText,this.hintText,this.myController);

  @override
  State<myTextField> createState() => _myTextFieldState();
}

class _myTextFieldState extends State<myTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: TextFormField(

        controller: widget.myController,
        keyboardType: TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.teal[0],

          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0),
          ),
         // border: InputBorder ,

          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 12.4,color: Colors.blueGrey),
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.red[400],fontSize: 12),

        ),
      ),
    );
  }
}