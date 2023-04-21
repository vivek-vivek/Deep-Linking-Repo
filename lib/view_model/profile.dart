import 'package:deep_linking_repo/view/firebase_linking.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deep linking'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: ElevatedButton(
            onPressed: () => LinkGenerator().shareLink(screen: 'Profile'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Divider(color: Colors.white),
                Text('Click here to share the screen link')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
