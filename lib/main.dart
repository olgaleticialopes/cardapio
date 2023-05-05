import 'package:flutter/material.dart';

void main() => runApp(MyApp());
//home: pagina inicial com logo e backgroud em degrade
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink[200]!, Colors.purple[200]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://cdn.picrew.me/shareImg/org/202305/1907419_eCZEslK9.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                Text(
                  'カワイイ寿司へようこそ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuScreen()),
                  ),
                  child: Text('Ver cardápio'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
                ),
              ],
            ),
          ),
        ),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Cardápio',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          backgroundColor: Colors.purple[100],
        ),
        home: HomeScreen(),
      );
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final items = [    { 'name': 'Kawashi',      'description': 'descrção',      'price': 18,      'imageUrl': 'https://thumbs.gfycat.com/GrizzledSpottedAppaloosa-max-1mb.gif',    }, 
     { 'name': 'Kawashi',      'description': 'descrção',      'price': 18,      'imageUrl': 'https://thumbs.gfycat.com/GrizzledSpottedAppaloosa-max-1mb.gif',    },   
       { 'name': 'Kawashi',      'description': 'descrção',      'price': 18,      'imageUrl': 'https://thumbs.gfycat.com/GrizzledSpottedAppaloosa-max-1mb.gif',    }, 
        { 'name': 'Kawashi',      'description': 'descrção',      'price': 18,      'imageUrl': 'https://thumbs.gfycat.com/GrizzledSpottedAppaloosa-max-1mb.gif',    }, 
        { 'name': 'Kawashi',      'description': 'descrção',      'price': 18,      'imageUrl': 'https://thumbs.gfycat.com/GrizzledSpottedAppaloosa-max-1mb.gif',    }];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Cardápio'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: items.length
,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              leading: Image.network(item['imageUrl']),
              title: Text(item['name']),
              subtitle: Text(item['description']),
              trailing: Text(
             'R\$ ${(item['price'] as num).toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      );
}