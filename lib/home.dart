import 'package:cashier/login_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey[400], Colors.white, Colors.grey])),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 70.0,
                        color: Colors.pink,
                      ),
                      Text("Frozen Food",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PopUpText()),
                  );
                },
                splashColor: Colors.grey[800],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 70.0,
                        color: Colors.yellow,
                      ),
                      Text("Unit Pasar",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PopUpText()),
                  );
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.smartphone,
                        size: 70.0,
                        color: Colors.lightBlueAccent,
                      ),
                      Text("KWT",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PopUpText()),
                  );
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person_pin,
                        size: 70.0,
                        color: Colors.lightGreen,
                      ),
                      Text("Eduwisata",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PopUpText()),
                  );
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        size: 70.0,
                        color: Colors.orange,
                      ),
                      Text("UMKM",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(12.0),
              color: Colors.grey[800],
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoText()),
                  );
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.info,
                        size: 70.0,
                        color: Colors.white,
                      ),
                      Text("About",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PopUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      backgroundColor: Colors.white,
      title: const Text('ALERT!!'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Feature not Available"),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: Text('Close'),
        ),
      ],
    );
  }
}

class InfoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Application Version 1.0.1',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
            fontFamily: "Nunito",
          ),
        ),
      ),
    );
  }
}
