import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

//  int counter = 0;

//  this function is for asynchronous code
  void getData() async {
     // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
//      print('Gas');
        return 'Gas';
    });

    //  simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2), () {
//      print('Mahasiswa');
        return 'mahasiswa';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
//    print('Init state running');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: FlatButton(
        onPressed: (){},
      ),
    );
  }
}
