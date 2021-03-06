import 'package:flutter/material.dart';

import 'package:my_catelog/models/catelog.dart';
import 'package:my_catelog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: context.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
              ).wh(120, 50)
            ],
          ).p32(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
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
                          color: context.cardColor,
                          width: context.screenWidth,
                          child: Column(
                            children: [
                              catalog.name.text.xl4
                                  .color(context.accentColor)
                                  .bold
                                  .make(),
                              catalog.desc.text.xl.make(),
                              10.heightBox,
                              "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document"
                                  .text
                                  .make()
                                  .p8()
                            ],
                          ).py64())))
            ])));
  }
}
