import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 2, 170, 38),
                borderRadius: BorderRadius.circular(16)),
            height: 500,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "RIZQI AHMAD SYAHRONI",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Application Software Engginering"),
                  const SizedBox(height: 16),
                  const Text("Bengkulu Selatan"),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Umur : "),
                      Text("20 tahun"),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Kampus : "),
                      Text("LP3I YOGYAKARYTA"),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Email : "),
                      Text("rizqironi1@gmail.com"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(
                      child: Text("data"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      print("Selamat Datang");
                    },
                    child: const Text("Login"),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.login),
                    label: const Text("Login"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
