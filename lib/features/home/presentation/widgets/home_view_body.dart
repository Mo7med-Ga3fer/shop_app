import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/styles.dart';
import 'package:shop_app/features/home/presentation/widgets/categories_list.dart';
import 'package:shop_app/features/home/presentation/widgets/discount_sales_list.dart';
import 'package:shop_app/features/home/presentation/widgets/products_grid_view.dart';
import 'package:shop_app/features/home/presentation/widgets/search_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                const CustomSearchBar(),
                const DiscountSalesList(),
                SizedBox(
                  height: 2.h,
                ),
                const Text(
                  'Categories',
                  style: TextStyles.textStyle24,
                ),
                SizedBox(
                  height: 2.h,
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 16.h, child: CategoriesList()),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Best Sellers',
                      style: TextStyles.textStyle24,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See all',
                          style: TextStyles.textStyle14,
                        )),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: ProductsGridView(),
          ),
        ],
      ),
    );
  }
}
