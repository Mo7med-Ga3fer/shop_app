import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DiscountSalesList extends StatelessWidget {
  const DiscountSalesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: SizedBox(
        height: 22.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  width: 75.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://t4.ftcdn.net/jpg/03/13/07/25/360_F_313072519_vYdFW4v45Lt3VLOquIlULm15Z0cJCiqx.jpg'),
                          fit: BoxFit.fill)),
                ),
              );
            }),
      ),
    );
  }
}
