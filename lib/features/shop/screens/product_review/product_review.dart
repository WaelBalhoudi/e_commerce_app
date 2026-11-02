import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/product/rating_bar_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_review/widgets/overall_product_rating.dart';
import 'package:e_commerce_app/features/shop/screens/product_review/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'widgets/rating_progress_indicator.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("Reviews and Ratings"), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Ratings and reviews are verified and are from people  who use the same type of device that you use."),
              SizedBox(height: TSizes.spaceBtWItems,),

              /// Overall Product Ratings
              TOverallProductRatting(),
              TRatingBarIndicator(rating: 3.8,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: TSizes.spaceBtWSections,),

              /// User Reviews List

              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}
