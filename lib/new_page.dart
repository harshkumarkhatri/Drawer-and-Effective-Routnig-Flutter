import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  const NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
      body: Center(child: Text("New page"),),
    );
  }
}