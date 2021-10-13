import 'package:flutter/material.dart';
import 'package:ticket/data/controller/home_controller.dart';
import 'package:ticket/data/models/user_models.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/extracts/extracts_page.dart';
import 'package:ticket/modules/mybolets/mybolets_page.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    MyBoletsPage(key: UniqueKey()),
    ExtractsPage(key: UniqueKey())
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
                          text: '${widget.user.name}',
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
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(widget.user.photourl!))),
              ),
            ),
          ),
        ),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 80,
        child: Column(
          children: [
            Divider(
              color: Colors.grey,
            ),
            Row(
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
                      color: controller.currentPage == 0
                          ? AppResources.primary
                          : AppResources.body,
                    )),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacementNamed(context, '/insert_bolet');
                    Navigator.pushNamed(context, "/barcode_scanner");
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
                      controller.setPage(1);
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.description_outlined,
                      color: controller.currentPage == 1
                          ? AppResources.primary
                          : AppResources.body,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
