import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('Init state running');
  }

  @override
  Widget build(BuildContext context) {
    print('Build state running $counter');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: FlatButton(
        onPressed: (){
          setState(() {
            counter+=1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
