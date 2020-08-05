import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text("ShopApp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){

            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Damindu Sandaruwan"),
              accountEmail: Text("test@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black54
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home, color: Colors.green,),
              ),
            ),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.amber,),
              ),
            ),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.orange,),
              ),
            ),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard,color: Colors.blueAccent,),
              ),
            ),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings, color: Colors.white,),
              ),
            ),
            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}