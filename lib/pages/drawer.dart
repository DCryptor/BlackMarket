import 'package:black_market/main.dart';
import 'package:black_market/pages/add_balance.dart';
import 'package:black_market/pages/all_listings.dart';
import 'package:black_market/pages/auth.dart';
import 'package:black_market/pages/my_listings.dart';
import 'package:black_market/pages/new_listing.dart';
import 'package:black_market/pages/profile_settings.dart';
import 'package:black_market/pages/settings.dart';
import 'package:flutter/material.dart';

class DrawerMenuPage extends StatelessWidget {
  const DrawerMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileDrawMenu('Николай'),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfilePage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message_outlined,
            ),
            title: Text("Все объявления"),
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AllListingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.note_alt_outlined,
            ),
            title: Text("Мои объявления"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyListingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.note_add_outlined,
            ),
            title: Text("Добавить объявление"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewListingPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.attach_money_outlined,
            ),
            title: Text("Пополнить баланс"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddBalancePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Настройки"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Выйти"),
            onTap: () {
              showAlertDialog(context);
            },
          ),
        ],
      ),
    );
  }
}

Widget ProfileDrawMenu(String user_name) {
  return Container(
    child: Row(
      children: [
        Container(
          child: CircleAvatar(
            foregroundImage: AssetImage(''),
            radius: 35,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  user_name,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget BalanceDrawMenu() {
  return Container(
    child: Row(
      children: [
        Container(
          child: Text("Баланс:"),
        ),
        Container(
          child: Text("100Р"),
        ),
      ],
    ),
  );
}

showAlertDialog(BuildContext dialogContext) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Отмена"),
    onPressed: () {
      Navigator.of(dialogContext, rootNavigator: true).pop();
    },
  );
  Widget launchButton = TextButton(
    child: Text("Выйти"),
    onPressed: () {
      Navigator.push(
        dialogContext,
        MaterialPageRoute(builder: (context) => AuthorizationPage()),
      );
      Navigator.of(dialogContext, rootNavigator: true).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Предупреждение"),
    content: Text("Вы действительно хотите выйти из своего аккаунта?"),
    actions: [
      cancelButton,
      launchButton,
    ],
  );

  // show the dialog
  showDialog(
    context: dialogContext,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
