import 'package:flutter/material.dart';
import 'package:my_catelog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: "Cart".text.black.make()),
        body: Column(
          children: [_CartList().p32().expand(), const Divider(), _CartTotal()],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${_cart.totalPrice}".text.xl5.color(context.accentColor).make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Buying not supported yet.")));
                },
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
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing To show".text.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.done),
                trailing: IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () {},
                ),
                title: _cart.items[index].name.text.make(),
              );
            },
          );
  }
}
