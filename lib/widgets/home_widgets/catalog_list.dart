import 'package:flutter/material.dart';
import 'package:my_catelog/pages/home_detail_page.dart';
import 'package:my_catelog/utils/routes.dart';
import 'package:my_catelog/widgets/home_widgets/catalog_item.dart';

import 'package:my_catelog/models/catelog.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                          catalog: catalog,
                        ))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
