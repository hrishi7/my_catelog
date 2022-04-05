import 'package:flutter/material.dart';

import 'package:my_catelog/models/catelog.dart';
import 'package:my_catelog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              MyTheme.darkBluishColor),
                          shape:
                              MaterialStateProperty.all(const StadiumBorder())),
                      child: "Buy".text.make())
                  .wh(100, 50)
            ],
          ).p32(),
        ),
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
            bottom: false,
            child: Column(children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                          color: Colors.white,
                          width: context.screenWidth,
                          child: Column(
                            children: [
                              catalog.name.text.xl4
                                  .color(MyTheme.darkBluishColor)
                                  .bold
                                  .make(),
                              catalog.desc.text.xl.make(),
                              10.heightBox,
                            ],
                          ).py64())))
            ])));
  }
}
