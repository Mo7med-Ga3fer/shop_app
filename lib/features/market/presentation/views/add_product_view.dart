import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/features/market/presentation/widgets/add_product_view_body.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Your Products'),
        centerTitle: true,
      ),
      body: const AddProductViewBody(),
    );
  }
}
