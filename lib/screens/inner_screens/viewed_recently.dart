import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:store_app/components/custom_empty_cart_widget.dart';
import 'package:store_app/components/custom_search_product_item.dart';
import 'package:store_app/constants/app_images.dart';
import 'package:store_app/constants/app_text.dart';
import 'package:store_app/widgets/app_bar_row_widget.dart';

class ViewedRecently extends StatelessWidget {
  static const String pageRoute = '/viewdRecently';
  const ViewedRecently({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isEmpty;
    // ignore: unnecessary_null_comparison
    return isEmpty != null
        ? CustomEmptyCartWidget(
            image: AppImages.imagesProfileRecent,
            title: AppTexts.woops,
            subTitile: AppTexts.emptyWishList,
            text: AppTexts.goShoping,
            buttonText: 'Shop now',
            onPressed: () {},
          )
        : Scaffold(
            appBar: AppBar(
              title: const AppBarRowWidget(
                text: 'Wish list',
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            body: DynamicHeightGridView(
              itemCount: 5,
              crossAxisCount: 2,
              builder: (context, index) {
                return const CustomSearchProductItem();
              },
            ),
          );
  }
}
