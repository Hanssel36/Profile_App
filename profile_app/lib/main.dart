import 'package:flutter/material.dart';
import 'package:profile_app/name_update.dart';
import 'package:profile_app/phone_number_update.dart';
import 'package:profile_app/email_update.dart';
import 'package:profile_app/bio_update.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var names = ["John", "Smith"];
  String number = "123-456-7890";
  String email = "Example@company.com";
  String bio =
      '''Hello my name is John Smith and I like to go hiking on weekends. ''';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text("Edit Profile")),
          body: Column(children: [
            Padding(
                padding: const EdgeInsetsDirectional.only(top: 50, bottom: 10),
                child: buildProfileImage()),
            SizedBox(
              width: 375,
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () async {
                    final newFirstName = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NameUpdateRoute(value: names)));
                    setState(() => names = newFirstName);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Name"),
                        ],
                      ),
                      Text("${names[0]} ${names[1]}",
                          style: const TextStyle(color: Colors.black))
                    ],
                  )),
            ),
            const Expanded(
                flex: 0,
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                )),
            SizedBox(
              width: 375,
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () async {
                    final newNumber = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhoneNumberUpdateRoute(value: number)));
                    setState(() => number = newNumber);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Phone"),
                        ],
                      ),
                      Text(number, style: const TextStyle(color: Colors.black))
                    ],
                  )),
            ),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              width: 375,
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () async {
                    final newEmail = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EmailUpdateRoute(value: email)));
                    setState(() => email = newEmail);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Email"),
                        ],
                      ),
                      Text(email, style: const TextStyle(color: Colors.black))
                    ],
                  )),
            ),
            const Expanded(
                flex: 0,
                child: Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                )),
            SizedBox(
              height: 100,
              width: 375,
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey),
                  ),
                  onPressed: () async {
                    final newBio = await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BioUpdateRoute(value: bio)));
                    setState(() => bio = newBio);
                  },
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Tell us about yourself"),
                        ],
                      ),
                      Text(bio, style: const TextStyle(color: Colors.black))
                    ],
                  )),
            ),
          ]),
        );
      }),
    );
  }

  Widget buildProfileImage() => CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50,
        child: SizedBox(
            child: ClipOval(
          child: Image.asset('assets/profile_icon.png'),
        )),
      );
}
