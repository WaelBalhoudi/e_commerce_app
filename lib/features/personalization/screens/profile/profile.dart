import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///profile image
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      isDark: isDark,
                      image: TImages.user,
                      isNetworkImage: false,
                      backgroundColor: Colors.transparent,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(onPressed: (){}, child: Text("Change profile picture"))
                  ],
                ),
              ),
              ///Details
              SizedBox(height: TSizes.spaceBtWItems/2,),
              Divider(),
              
              SizedBox(height: TSizes.spaceBtWItems,),
              TSectionHeading(title: "Profile Information ",showActionButton: false),
              SizedBox(height: TSizes.spaceBtWItems,),

              TProfileMenu(title: 'Name:', value: 'Wael Balhoudi', onTop: () {  },),
              TProfileMenu(title: 'User Name:', value: 'Mr. Balhoudi', onTop: () {  },),
              Divider(),
              SizedBox(height: TSizes.spaceBtWItems,),
              TSectionHeading(title: "Personal Information ",showActionButton: false),
              SizedBox(height: TSizes.spaceBtWItems,),
              TProfileMenu(title: 'User ID:', value: '#D14EQ', onTop: () {  },icon: Iconsax.copy,),
              TProfileMenu(title: 'Email:', value: "waelbalhoudi@gmail.com", onTop: () {  },),
              TProfileMenu(title: 'Phone Number:', value: '+216 54213094', onTop: () {  },),
              TProfileMenu(title: 'Gender:', value: 'Mail', onTop: () {  },),
              TProfileMenu(title: 'Date of Birth:', value: '05/06/2003', onTop: () {  },),
              SizedBox(height: TSizes.spaceBtWItems,),
              Center(
                child: TextButton(onPressed: (){}, child:Text("Close Account",style: TextStyle(color:Colors.red),) ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


