import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Product'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ProductDetailsViewBody(),
    );
  }
}