import 'package:flutter/material.dart';
import 'package:latkuis124220019/dummydata.dart';
import 'package:latkuis124220019/login.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 113, 6, 6)),
                    foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 253, 251, 251)),
                  ),
                  onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
      }, child: const Text('Logout')),
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 113, 6, 6),
        centerTitle: true,
        title: Text('Selamat datang, $username!', style: const TextStyle(color: Color.fromARGB(255, 249, 250, 250)),),
      ),
      body: GridView.builder(
        itemCount: vehicleList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.5), 
        itemBuilder: (context, index) {
        Vehicle merk = vehicleList[index];
        return Card(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 240, 213, 213)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: NetworkImage(merk.imageUrls[0])),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: 
                    Text(merk.name),
                  ),
                ),
                Text(textAlign: TextAlign.left,merk.type,),
                Text(merk.fuelType),
                Text(merk.engine, textAlign: TextAlign.left,),
                Text(merk.price),
                Text(merk.description)
              ],
            ),
          ),
        ) ;
      },),
    );
  }
}