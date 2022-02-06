import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/routes-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
class PokemonItem extends StatelessWidget {
  const PokemonItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.pokemonDetailsRoute);
      },
      child: Container(
        decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s4))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              child: Image.asset(
                  "assets/images/sample.png",
                  width:120,
                  height:120
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p8, vertical: AppSize.s4),
              child: Text(
                "#001",
                style: smallTextStyle(color: ColorManager.lightGrey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
              child: Text(
                "Bulbasaur",
                style: titleTextStyle(color: ColorManager.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8, vertical: AppPadding.p8),
              child: Text(
                "Grass, Poison",
                style: subtitleTextStyle(color: ColorManager.lightGrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}