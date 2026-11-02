import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        isDark: false,
        backgroundColor: Colors.transparent,
        image:TImages.user,
        isNetworkImage: false,
        width: 50,
        height: 50,
      ),
      title: Text("Wael Balhoudi",style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),),
      subtitle: Text("waelbalhoudi@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),
      trailing: IconButton(onPressed:()=> Get.to(Profile()), icon: Icon(Iconsax.edit),color: TColors.textWhite,),
    );
  }
}