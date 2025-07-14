import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xff7209b7),
                    ),
                    accountName: new Text('Usuário'),
                    accountEmail: new Text('carolinaribeirodacol@gmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/perfil.jpg'),
                    )),
                ListTile(
                  title: Text(
                    'Check-List',
                    style: TextStyle(
                      color: Color(0xff7209b7),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Minha Galeria',
                    style: TextStyle(
                      color: Color(0xff7209b7),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Sobre o app',
                    style: TextStyle(
                      color: Color(0xff7209b7),
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/AboutApp');
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
