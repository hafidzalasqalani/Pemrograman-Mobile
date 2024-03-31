import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final _headerImage = Container(
    width: double.infinity,
    height: 400,
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover)),
    child: Container(
      margin: const EdgeInsets.only(top: 90),
      child: Column(
        children: const [
          CircleAvatar(
            radius: 64,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Hafidz Al Asqalani',
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Student',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          )
        ],
      ),
    ),
  );

  final _personalInfo = Container(
    margin: const EdgeInsets.all(85),
    child: Column(
      children: [
        const SizedBox(height: 20),
        Row(
          children: const [
            Icon(
              Icons.mail,
              color: Color.fromARGB(255, 21, 164, 218),
            ),
            SizedBox(
              width: 15,
            ),
            Text('hafidzalasqalani@gmail.com')
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(
              Icons.phone_android,
              color: Color.fromARGB(255, 21, 164, 218),
            ),
            SizedBox(
              width: 15,
            ),
            Text('+62 89625851135')
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(
              Icons.group_add,
              color: Color.fromARGB(255, 21, 164, 218),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Add to Group')
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: const [
            Icon(
              Icons.comment,
              color: Color.fromARGB(255, 21, 164, 218),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Show all Comments')
          ],
        ),
      ],
    ),
  );

  final _followButton = ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: const Color.fromARGB(255, 21, 164, 218)),
    onPressed: () {},
    child: const Text('FOLLOW ME', style: TextStyle(color: Colors.white70)),
  );

  final _numberInfo = Container(
    height: 100,
    decoration: BoxDecoration(boxShadow: const [
      BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(2, 4)),
    ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.symmetric(vertical: 345, horizontal: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Photos',
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '150',
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 164, 218),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Followers',
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '3275',
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 164, 218),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Following',
              style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1250',
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 164, 218),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile Screen",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [_headerImage, _personalInfo, _followButton],
            ),
            _numberInfo
          ],
        ),
      ),
    );
  }
}
