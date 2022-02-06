import 'package:android_test_task/presentation/pages/home/favourites-page.dart';
import 'package:android_test_task/presentation/pages/home/pokemons-page.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:android_test_task/presentation/resources/styles-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:android_test_task/presentation/widgets/custom-divider.dart';
import 'package:android_test_task/presentation/widgets/default-app-bar.dart';
import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: DefaultAppBar(
            backgroundColor: ColorManager.white,
            showNavIcon: false,
          )),
      body: Column(
        children: [
          CustomDivider(height: 3,),
          ColoredBox(
            color: Colors.white,
            child: TabBar(
              indicator: MD2Indicator( //it begins here
                  indicatorHeight: AppSize.s4,
                  indicatorColor: ColorManager.indicatorColor,
                  indicatorSize: MD2IndicatorSize.normal //3 different modes tiny-normal-full
              ),
              controller: _tabController,
              labelStyle: tabTextStyle(color: ColorManager.textColor),
              labelColor: ColorManager.textColor,
              unselectedLabelColor: ColorManager.lightGrey,
              tabs: [
                // first tab [you can add an icon using the icon property]
                Tab(
                  text: AppStrings.tabTitle1,
                ),

                // second tab [you can add an icon using the icon property]
                Tab(
                  text: AppStrings.tabTitle2,
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view page
                PokemonsPage(),
                // second tab bar view page
                FavouritesPage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
