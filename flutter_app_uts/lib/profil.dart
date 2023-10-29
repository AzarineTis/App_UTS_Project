import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 206, 249),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profil.jpeg'),
            ),
            const SizedBox(height: 30),
            itemProfile(
                'Name', 'Azarine Tisha Alodia Yugiani', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '0837382456', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Npm', '21670091', CupertinoIcons.calendar),
            const SizedBox(height: 10),
            itemProfile('Jurusan', 'Informatika', CupertinoIcons.book),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Ke Laman Dashboard'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: Color.fromARGB(255, 228, 79, 79),
              ),
            ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 220, 151, 193),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Color.fromARGB(255, 239, 185, 229).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward,
            color: Color.fromARGB(255, 236, 177, 234)),
        tileColor: Color.fromARGB(255, 226, 130, 130),
      ),
    );
  }
}
