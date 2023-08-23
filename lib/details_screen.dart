import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tfw_food_delivery_app/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11,
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan salad bowl\n',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: 'With red tomato',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
            )
          ],
        ),
      ),
    );
  }
}
