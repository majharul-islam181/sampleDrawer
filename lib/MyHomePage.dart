import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text(
                    'L O G O ',
                    style: TextStyle(fontSize: 37),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstPage()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
