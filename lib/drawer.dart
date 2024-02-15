import 'package:calculator/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  final imageurl =
      "https://scontent.flyp2-1.fna.fbcdn.net/v/t39.30808-6/376267351_632592302315331_1980193971391215532_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGC1e6TzjbNqQP7E7hwZ7GoHsz03WgLeCUezPTdaAt4JbFU8OG2z0qV3gEhnSRYqxUkG0WCxvI6hlDG1XWuJJBk&_nc_ohc=PM6mgboQVxAAX-iuMEr&_nc_ht=scontent.flyp2-1.fna&oh=00_AfBvyt0XOZqhxco5wAKqrdKG-1n0PWXF6KZdV042Aw51LQ&oe=651D62F3";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: them ? Colors.grey.shade900 : Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: them ? Colors.white : Colors.grey.shade900),
                  accountName: Text(
                    "Abdullah",
                    style: TextStyle(
                        color: them ? Colors.grey.shade900 : Colors.white),
                  ),
                  accountEmail: Text(
                    "abdullahmiang4@gmail.com",
                    style: TextStyle(
                        color: them ? Colors.grey.shade900 : Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: them ? Colors.grey.shade900 : Colors.white,
                    // backgroundImage: NetworkImage(imageurl),
                  ),
                )),
            ListTile(
              onTap: () {},
              leading: Icon(CupertinoIcons.home,
                  color: them ? Colors.white : Colors.grey.shade900),
              title: Text(
                "HOME",
                style: TextStyle(
                    color: them ? Colors.white : Colors.grey.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () async {
                // Navigator.pushNamed(context, null);
              },
              leading: Icon(CupertinoIcons.profile_circled,
                  color: them ? Colors.white : Colors.grey.shade900),
              title: Text(
                "PROFILE",
                style: TextStyle(
                    color: them ? Colors.white : Colors.grey.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () async {
                // Navigator.pushNamed(context, Myroutes.profile);
              },
              leading: Icon(CupertinoIcons.phone,
                  color: them ? Colors.white : Colors.grey.shade900),
              title: Text(
                "CONTACT",
                style: TextStyle(
                    color: them ? Colors.white : Colors.grey.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  them = !them;
                });
                ;
              },
              leading: Icon(CupertinoIcons.brightness_solid,
                  color: them ? Colors.white : Colors.grey.shade900),
              title: Text("Brightness",
                  style: TextStyle(
                      color: them ? Colors.white : Colors.grey.shade900,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
