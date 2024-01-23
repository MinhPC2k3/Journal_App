import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(padding: const EdgeInsets.all(24.0)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add journal Entry',
        onPressed: () {
          _addOrEditJournal(add: true, index: -1, journal: Journal());
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        initialData: [],
        future: null,
        builder: (context,snapshot){
          return !snapshot.hasData ? CircularProgressIndicator() : Center(
            child: Text('Feature comming soon'),
          );
        },

      ),
    );
  }
}