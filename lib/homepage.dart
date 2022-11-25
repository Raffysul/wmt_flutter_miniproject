import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white54, Colors.purple.shade200])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _header(context),
                  _inputField(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: const [
        Text(
          'Create Account',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text('Enter your credentials to register')
      ],
    );
  }
  _inputField(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.person)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.person)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.email)),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.password_outlined)),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: const Icon(Icons.password_outlined)),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(horizontal: 16)),
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
