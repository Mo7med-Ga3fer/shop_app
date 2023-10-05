import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/widgets/item_product.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});
//200
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        clipBehavior: Clip.none,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            childAspectRatio: 1 / 1.4),
        itemCount: 20,
        itemBuilder: (context, index) {
          return const ItemProduct();
        });
  }
}
