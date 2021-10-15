import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:ticket/data/controller/bolet_list_controller.dart';
import 'package:ticket/data/models/bolet_models.dart';
import 'package:ticket/data/utility/res.dart';
import 'package:ticket/modules/components/bolet_info.dart';
import 'package:ticket/modules/components/bolet_list.dart';
import 'package:ticket/modules/components/bolet_tile.dart';

class MyBoletsPage extends StatefulWidget {
  const MyBoletsPage({Key? key}) : super(key: key);

  @override
  _MyBoletsPageState createState() => _MyBoletsPageState();
}

class _MyBoletsPageState extends State<MyBoletsPage> {
  final controller = BoletoListController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              color: AppResources.primary,
              height: 40,
              width: double.maxFinite,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: AnimatedCard(
                  direction: AnimatedCardDirection.top,
                  child: BoletoInfoWidget(size: controller.bolet.length)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Row(
            children: [
              Text(
                'My Bolets',
                style: AppResources.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24),
          child: Divider(
            color: AppResources.stroke,
            thickness: 1,
            height: 1,
          ),
        ),
        Container(
          child: FutureBuilder(
              future: controller.getFirebaseBolets(),
              builder: (BuildContext ctx, AsyncSnapshot snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return Center(
                      child: CircularProgressIndicator(
                          backgroundColor: Colors.black),
                    );
                  default:
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          'Erro ao carregar os dados',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    } else {
                      return ticketWidget(controller.bolet);
                    }
                }
              }),
        ),
      ],
    );
  }

  Widget ticketWidget(List<BoletoModel> boleto) {
    List<BoletoModel> bolet = boleto;
    return bolet.length == 0
        ? Center(
            child: Text(
              "Sem boletos",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: bolet.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              //itemBuilder: (BuildContext ctx, int index) {
              return GestureDetector(
                child: BoletoTileWidget(data: bolet[index]),
                onTap: () {
                  // method to go to another page passing category position
                  // Get.to();
                },
              );
            },
          );
  }
}
