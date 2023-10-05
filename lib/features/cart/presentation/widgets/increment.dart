import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/styles.dart';

class Increment extends StatefulWidget {
  const Increment({super.key});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 38,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  num++;
                });
              },
              icon: const Icon(Icons.add)),
          Text(
            num.toString(),
            style: TextStyles.textStyle18,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                if (num > 0) {
                  setState(() {
                    num--;
                  });
                }
              },
              icon: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
