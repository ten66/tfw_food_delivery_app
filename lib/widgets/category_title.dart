import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({
    super.key,
    required this.title,
    // default value が入る時は、requiredは必要ない
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 30,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
            // 三項演算子(boolean値 ? trueの場合の処理 : falseの場合の処理)
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}
