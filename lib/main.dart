import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homescreen(),
  ));
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Icon(Icons.arrow_back), Icon(Icons.menu)],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: CircleAvatar(
              radius: 83,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
              radius: 73,
              backgroundImage: NetworkImage(
                  "https://media.gq.com/photos/56e853e7161e63486d04d6c8/4:3/w_1600,h_1200,c_limit/david-beckham-gq-0416-2.jpg")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                FaIcon(FontAwesomeIcons.facebook),
                FaIcon(FontAwesomeIcons.google),
                FaIcon(FontAwesomeIcons.twitter),
                FaIcon(FontAwesomeIcons.linkedin)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Center(
                child: Column(children: const [
              Text(
                "Chromicle",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text("@amFOSS"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Mobile App Developer and Open",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Source enthusiastic",
                style: TextStyle(fontSize: 20),
              )
            ])),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, right: 35),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.2,
            child: SingleChildScrollView(
                child: Column(
              children: const [
                Profiletile(
                    txt: "Privacy",
                    icon: Icon(
                      Icons.privacy_tip,
                      color: Colors.black,
                    )),
                Profiletile(
                    txt: "Purchase History",
                    icon: Icon(
                      Icons.history,
                      color: Colors.black,
                    )),
                Profiletile(
                    txt: "Help & Support",
                    icon: Icon(
                      Icons.help,
                      color: Colors.black,
                    )),
                Profiletile(
                    txt: "Settings",
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    )),
                Profiletile(
                    txt: "Invite a Friend",
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.black,
                    )),
                Profiletile(
                    txt: "Logout",
                    icon: Icon(
                      Icons.logout,
                      color: Colors.black,
                    ))
              ],
            )),
          )
        ]),
      ),
    );
  }
}

class Profiletile extends StatelessWidget {
  const Profiletile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);
  final String txt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey[300]),
      child: ListTile(
          leading: icon,
          trailing: const Icon(Icons.arrow_forward, color: Colors.black),
          dense: true,
          title: Text(
            txt,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          )),
    );
  }
}
