import 'package:flutter/material.dart';
import 'package:latkuis124220019/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 113, 6, 6),
        centerTitle: true,
        title: const Text('Vehicle', style: TextStyle(color: Color.fromARGB(255, 250, 249, 249)), ),
      ),

      body: Padding(padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          height:800,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: const AssetImage('assets/mobil.png')),
        
                TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Username',
                    ),
                ),
                TextField(
                   onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: 'Password',
                    ),
                ),
        
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 113, 6, 6)),
                      foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 253, 251, 251)),
                    ),
                    onPressed: (){
                      if (username=='admin' && password=='0000' ) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Berhasil!'),backgroundColor: Color.fromARGB(255, 161, 215, 141),));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(username: username,)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Gagal!'),backgroundColor: Color.fromARGB(255, 217, 125, 118),));
                        
                      }
                    }, 
                    child: const Text('Login', style: TextStyle(fontSize: 20),)))
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}