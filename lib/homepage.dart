import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 194, 148, 255),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              accountName: Text("Angel Perez 1086"),
              accountEmail: Text("a.22308051281086@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Text(
                    "AM",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}