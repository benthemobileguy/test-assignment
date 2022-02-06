import 'package:android_test_task/presentation/pages/home/components/pokemon-item.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class PokemonsPage extends StatefulWidget {
  const PokemonsPage({Key key}) : super(key: key);

  @override
  _PokemonsPageState createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child:  GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount: 3, childAspectRatio: 0.6,
              mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (_, index) {
            return PokemonItem();
          },
          itemCount: 9,
        ),
      ),
    );
  }
}

