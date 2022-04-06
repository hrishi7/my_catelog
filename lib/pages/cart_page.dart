import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
            backgroundColor: Colors.transparent, title: "Cart".text.make()),
        body: Column(
          children: [
            const _CartList().p32().expand(),
            const Divider(),
            const _CartTotal()
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${9999}".text.xl5.color(context.accentColor).make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        // ignore: deprecated_member_use
                        MaterialStateProperty.all(context.theme.buttonColor)),
                // ignore: deprecated_member_use
                child: "Buy".text.white.make())
            .w32(context)
      ]),
    );
  }
}

class _CartList extends StatelessWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.done),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () {},
          ),
          title: "Item 1".text.make(),
        );
      },
    );
  }
}
