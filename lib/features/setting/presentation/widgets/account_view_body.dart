import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_app/core/utils/assets.dart';
import 'package:shop_app/core/utils/constants.dart';
import 'package:shop_app/core/utils/styles.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 16.w,
                backgroundImage: const AssetImage(AssetsData.accountLogo),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Mohamed Salah',
                      style: TextStyles.textStyle24,
                    ),
                    Text(
                      'abusalah@gmail.com',
                      style: TextStyles.textStyle14,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          ListTile(
            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                child: const Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                )),
            title: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Favourite'),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: kPrimaryColor,
            ),
          ),
          ListTile(
            leading: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )),
            title: const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text('Favourite'),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
