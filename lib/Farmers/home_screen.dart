import 'package:e_commerce_project/Farmers/product_grid.dart';
import 'package:e_commerce_project/Farmers/servie_feature.dart';
import 'package:e_commerce_project/Farmers/slidder.dart';
import 'package:e_commerce_project/Farmers/users/colors.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'banner.dart';
import 'blog.dart';
import 'bottom.dart';
import 'category.dart';
import 'chip.dart';
import 'customer.dart';
import 'footer.dart';
import 'footer_widget.dart';
import 'main_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List _widgets = const [
    ChipContainerWidget(),
    SliderWidget(),
    ServiceFeaturesWidget(),
    MainTitleWidget(title: "Shop By Category"),
    CategoryGridWidget(),
    BannerWidget(),
    MainTitleWidget(title: "Best Selling Products"),
    ProductGridWidget(),
    BannerWidget(),
    BlogTileWidget(),
    CustomerReviewWidget(),
    FooterWidget(),
    FoooterBannerWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppBarWidget(),
            SliverList.builder(
                itemCount: _widgets.length,
                itemBuilder: (context, index) => _widgets[index]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}