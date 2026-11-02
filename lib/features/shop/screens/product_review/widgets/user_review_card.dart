import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/product/rating_bar_indicator.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(TImages.userAvatarImage1),

                    ),
                    SizedBox(width: TSizes.spaceBtWItems,),
                    Text("John Doe", style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,)
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems,),
        Row(
          children: [
            TRatingBarIndicator(rating: 4, size: 20,),
            SizedBox(width: TSizes.spaceBtWItems,),

            Text("01 Nov, 2025", style: Theme
                .of(context)
                .textTheme
                .bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems,),
        ReadMoreText(
          "The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: " show more",

        ),
        SizedBox(height: TSizes.spaceBtWItems,),
        TRoundedContainer(
          backgroundColor: isDark ? TColors.darkGrey : TColors.grey,
          child: Padding(padding: EdgeInsets.all(TSizes.padding_small), child:
            Column(
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("T's Store",style: Theme.of(context).textTheme.titleMedium,),
                   Text("02 Nov, 2025",style: Theme.of(context).textTheme.bodyLarge,),
                 ],
               ),
                SizedBox(height: TSizes.spaceBtWItems,),
                ReadMoreText(
                  "The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job!",
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: " show more",

                ),

              ],
            )
            ),
        ),
        SizedBox(height: TSizes.spaceBtWSections,),

      ],
    );
  }
}
