import 'package:my_catelog/models/catelog.dart';
import 'package:my_catelog/store/store.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  late CatalogModel _catalog;

  // Collection of the IDs
  final List<int> _itemIds = [];

  CatalogModel get catalg => _catalog;

  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}


class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation( this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}


class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation( this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}