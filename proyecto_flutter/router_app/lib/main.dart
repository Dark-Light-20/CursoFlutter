import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:router_app/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.login, color: Colors.white),
            tileColor: Colors.blueGrey,
            onTap: () {
              final faker = Faker();
              final loginRoute = MaterialPageRoute(
                builder: (context) => LoginPage(
                  email: faker.internet.email(),
                ),
              );
              // Navigator.push(context, loginRoute);
              final loginRouteArgs = MaterialPageRoute(
                  builder: (context) => const LoginPageArgs(),
                  settings: RouteSettings(arguments: {faker.internet.email()}));
              Navigator.push(context, loginRouteArgs);
              final contactRoute = MaterialPageRoute(
                builder: (context) => ContactPage(),
              );
              // Delete routes history
              // Navigator.pushReplacement(context, contactRoute);
            },
            title: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
