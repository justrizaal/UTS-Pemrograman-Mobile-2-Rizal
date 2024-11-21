import 'package:flutter/material.dart';

void main() {
  runApp( ProfilPage());
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Logo Profile
          Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: const AssetImage('lib/images/logo.png'), // Ganti logo di lib/images
              backgroundColor: Colors.grey[400], // Placeholder jika gambar tidak ditemukan
            ),
          ),
          const SizedBox(height: 20),
          // ListView Menu
          Expanded(
            child: ListView(
              children: [
                MenuTile(
                  title: 'Akun',
                  icon: Icons.person,
                  onTap: () {
                    // Navigasi atau aksi Akun
                    print('Akun clicked');
                  },
                ),
                MenuTile(
                  title: 'Avatar',
                  icon: Icons.face,
                  onTap: () {
                    // Navigasi atau aksi Avatar
                    print('Avatar clicked');
                  },
                ),
                MenuTile(
                  title: 'Bantuan',
                  icon: Icons.help_outline,
                  onTap: () {
                    // Navigasi atau aksi Bantuan
                    print('Bantuan clicked');
                  },
                ),
                MenuTile(
                  title: 'Logout',
                  icon: Icons.logout,
                  onTap: () {
                    // Navigasi atau aksi Logout
                    print('Logout clicked');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
