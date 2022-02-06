import 'package:android_test_task/presentation/pages/home/components/pokemon-item.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key key}) : super(key: key);

  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child:  GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 3, childAspectRatio: AppSize.s0_6,
              mainAxisSpacing: AppSize.s10, crossAxisSpacing: AppSize.s10),
          itemBuilder: (_, index) {
            return PokemonItem();
          },
          itemCount: 9,
        ),
      ),
    );
  }
}
