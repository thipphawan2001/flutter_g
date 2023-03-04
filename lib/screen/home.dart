import 'package:flutter/material.dart';
import 'package:an/screen/register.dart';
import 'login.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register / Login'),
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
                  icon: Icon(Icons.login),
                  label: Text('เข้าสู่ระบบ', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
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
                      Text('สร้างบัญชีผู้ใช้', style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
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
