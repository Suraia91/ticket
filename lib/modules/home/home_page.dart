import 'package:flutter/material.dart';
import 'package:ticket/data/controller/home_controller.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/data/utility/res.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppResources.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: 'Ola, ',
                    style: AppResources.titleRegular,
                    children: [
                      TextSpan(
                          text: 'Suraia',
                          style: AppResources.titleBoldBackground)
                    ]),
              ),
              subtitle: Text(
                'Mantenha as suas contas organizadas!',
                style: AppResources.captionShape,
              ),
              trailing: Container(
                height: 48.0,
                width: 48.0,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    controller.setPage(0);
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: AppResources.primary,
                )),
            GestureDetector(
              onTap: () {
                setState(() {
                  controller.setPage(1);
                });
                print('');
              },
              child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: AppResources.primary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: AppResources.background,
                  )),
            ),
            IconButton(
                onPressed: () {
                  controller.setPage(2);
                },
                icon: Icon(
                  Icons.description_outlined,
                  color: AppResources.body,
                )),
          ],
        ),
      ),
    );
  }
}
