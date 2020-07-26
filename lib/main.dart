import 'package:drawer_and_effective_routing_flutter/new_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime), home: HomePage(),
      // routes: <String,WidgetBuilder>{
      //   '/a':(BuildContext context)=>NewPage("New Page")
      // },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("drawer and routing"),
          elevation: defaultTargetPlatform == TargetPlatform.android ? 5 : 0,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Harsh"),
                accountEmail: Text("harsh@harsh.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text("P"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text("k"),
                  ),
                ],
              ),
              ListTile(
                title: Text("Page 1"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed('/a');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                        NewPage("Page 1")
                    ),
                  );
                },
              ),
              ListTile(
                title: Text("Page 2"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.of(context).pushNamed('/a');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                        NewPage("Page 2")
                      
                    ),
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Text("Homei"),
          ),
        ));
  }
}
