import 'package:flutter/material.dart';

import 'newpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "My Drawer App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Text(
            "Home",
            style: TextStyle(fontSize: 16),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Muhammad Rameez ",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "muhammadrmz871@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://miro.medium.com/max/3150/1*IKWC2jXpjCEu-ysCn4dhgA.jpeg",
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor:
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? Colors.white
                            : Colors.deepPurple,
                    child: Text(
                      "R",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )
                ],
              ),
              Divider(),
              new ListTile(
                title: Text(
                  "Page One",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: new Icon(Icons.arrow_upward),
                iconColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) => Newpage("Page One")),
                  );
                },
              ),
              new ListTile(
                title: Text(
                  "Page Two",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: new Icon(Icons.arrow_downward_rounded),
                iconColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            Newpage(" Page Two")),
                  );
                },
              ),
              Divider(),
              new ListTile(
                title: Text(
                  "Close Page",
                  style: TextStyle(fontSize: 16),
                ),
                trailing: new Icon(Icons.close),
                iconColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
