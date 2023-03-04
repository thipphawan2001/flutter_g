import 'package:an/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:an/screen/register.dart';
import 'login.dart';
class index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('index'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
             Image.network('https://i0.wp.com/www.iurban.in.th/wp-content/uploads/2016/09/pooh-and-piglet.png?resize=418%2C417&ssl=1'),
               
             SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  label:
                      Text('ออกจากระบบ', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                ),
              ),
    Text(''),
               SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  label:
                      Text('Home', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                ),
              ),
           
            ],
          ),
          
        ),
      ),
    );
  }

  String newMethod() => 'assets/image/logo.png';
}
