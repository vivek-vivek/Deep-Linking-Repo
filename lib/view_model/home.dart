import 'package:deep_linking_repo/view/firebase_linking.dart';
import 'package:deep_linking_repo/view_model/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

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
            onPressed: () => LinkGenerator().shareLink(screen: 'HomeScreen'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Divider(color: Colors.white),
                Text('Click here to share the screen link')
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const Profile(),
            ),
          );
        },
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}
