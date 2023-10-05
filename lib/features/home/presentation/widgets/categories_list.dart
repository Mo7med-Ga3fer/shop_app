import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/assets.dart';
import 'package:shop_app/core/utils/styles.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'name': "Men", 'img': AssetsData.menLogo},
      {'name': "Women", 'img': AssetsData.womenLogo},
      {'name': "Devices", 'img': AssetsData.devicesLogo},
      {'name': "Jewelary", 'img': AssetsData.diamondLogo},
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 24, top: 5, left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: const Color(0xffFFFFFF),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Image.asset(categories[index]['img']),
                  ),
                ),
                Text(
                  categories[index]['name'],
                  style: TextStyles.textStyle14,
                )
              ],
            ),
          );
        });
  }
}
