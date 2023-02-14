import 'package:black_market/pages/drawer.dart';
import 'package:flutter/material.dart';

class AllListingsPage extends StatelessWidget {
  const AllListingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Все объявления',
      home: Scaffold(
        drawer: const DrawerMenuPage(),
        appBar: AppBar(
          title: const Text('Все объявления'),
        ),
        body: Container(
          child: ListView(
            children: [
              Listing(
                  "Николай",
                  "Описание хуя муя туда сюда я играю на компьютере и делаю всякие разные хуйни для разной хуйни",
                  1200),
              Listing("Кэскил",
                  "Ищу опытных программистов для работы над проектом.", 5200),
              Listing(
                  "Торгаш",
                  "Нужна девушка на 1 ночь. Габариты 90 60 90, рост: 150-160.",
                  1300),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Listing(
    String author_listing, String description_listing, int price_listing) {
  return Container(
    alignment: Alignment.center,
    child: ListTile(
      leading: CircleAvatar(),
      title: Container(
        child: Text(author_listing),
      ),
      subtitle: Column(
        children: [
          Container(
            child: Text(
              description_listing,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            //alignment: Alignment.centerLeft,
            child: Text(
              "Дата опубликования: 23.02.2023",
              style: TextStyle(
                color: Colors.black26,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
      trailing: Container(
          child: Text(
        "$price_listing Ᵽ",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      onTap: () {},
    ),
  );
}
