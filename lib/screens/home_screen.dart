import 'package:flutter/material.dart';
import 'package:login_with_provider/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            Consumer<UserProvider>(
              builder: (context, provider, _){
                return UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/05/32/49/40/360_F_532494081_wCmYn5STPScYlxF9UysgVnbTd2q53tM6.jpg'),
                  ),
                  accountName: Text('${provider.email!.split('@')[0]}'), 
                  accountEmail: Text('${provider.email}'),
                );
              }
            ),
          ],
        ),
      ),
      body: Center(child: Text("Home screen")),
    );
  }
}