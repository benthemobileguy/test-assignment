import 'package:android_test_task/presentation/pages/pokemon-details/components/base-stat.dart';
import 'package:android_test_task/presentation/pages/pokemon-details/components/custom-flexible-app-bar.dart';
import 'package:android_test_task/presentation/pages/pokemon-details/components/stat-item.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:android_test_task/presentation/widgets/custom-divider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class PokemonDetailsPage extends StatefulWidget {
  const PokemonDetailsPage({Key key}) : super(key: key);

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: AppSize.s250,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background:CustomFlexibleAppBar(),
                ),
                backgroundColor: ColorManager.lightGreen,
                leading: Icon(Icons.chevron_left,
                  color: ColorManager.black,
                  size: AppSize.s28,),
              ),
              SliverToBoxAdapter(
                  child: Container(
                    color: ColorManager.white,
                    padding: EdgeInsets.all(AppMargin.m16),
                    child: Row(
                      children: [
                        StatItem(),
                        SizedBox(
                          width: AppMargin.m40,
                        ),
                        StatItem(),
                        SizedBox(
                          width: AppMargin.m40,
                        ),
                        StatItem(),
                      ],
                    ),

                  )
              ),
              SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: ColorManager.white,
                        margin: EdgeInsets.only(top: AppMargin.m10),
                        padding: EdgeInsets.all(AppMargin.m16),
                        child: Text(
                          AppStrings.baseStats,
                          style: titleTextStyle(color: ColorManager.textColor),
                        ),
                      ),
                      CustomDivider(height: 1,),
                      BaseStat(),
                    ],
                  )
              ),

            ],
          ),
          Positioned(
            bottom: 50.0,
            right: 20.0,
            child: FloatingActionButton.extended(
              backgroundColor: ColorManager.indicatorColor,
              label:   Text(
                AppStrings.markFavourite,
                style: titleTextStyleBold(color: ColorManager.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}




