import 'package:Foodtik/controller/favorite_screen_cubit/favorite_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/widget/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant_colors.dart';
import '../widget/search_text_input_widget.dart';
import 'filter_screen.dart';
import 'location_screen.dart';
import 'notification_screen.dart';
import 'other_category_screen.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  TextEditingController searchTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<FavoriteScreenCubit>().getFavoriteProduct();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: responsiveHeight(context, 30),
                  horizontal: responsiveWidth(context, 30)),
              child: ListTile(
                leading: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).colorScheme.secondaryFixed,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationScreen(),
                            ));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                        },
                        child: Icon(
                          Icons.location_pin,
                          color: ConstantColors.green_background,
                          size: 15,
                        ),
                      ),
                    )),
                title: Text(
                  "Current location ▾",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                subtitle: Text(
                  "Jl. Soekarno Hatta 15A Malang",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 14.sp,
                  ),
                ),
                trailing: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveWidth(context, 11),
                      vertical: responsiveHeight(context, 8),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).colorScheme.secondaryFixed,
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) {
                            return SizedBox(
                                height: responsiveHeight(context, 600),
                                child: NotificationScreen()
                            );
                          },
                        );
                      },
                      child: Icon(
                        Icons.notifications_none,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 15,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 30)),
              child: SearchTextInputWidget(
                hint: "Search menu, restaurant or etc",
                textEditingController: searchTextEditingController,
                prefixIcon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                suffixIcon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterScreen(),
                          ));
                    },
                    child: Container(
                      width: responsiveWidth(context, 15),
                      height: responsiveHeight(context, 15),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage(
                                "assets/images/equalizer.png"),
                          ),
                      ),
                    ),
                ),
              ),
            ),
            SizedBox(height: responsiveHeight(context, 30),),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: responsiveWidth(context, 10)),
              child: Text("Favorite" , style: TextStyle(color: Theme.of(context).colorScheme.secondary , fontSize: 20.sp , fontWeight: FontWeight.w600),),
            ),

            BlocBuilder<FavoriteScreenCubit , FavoriteScreenState>(builder: (context, state) {
              if(state is RemoveFromFavoriteState){
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: responsiveHeight(context, 80)),
                  child: GridView.builder(
                    clipBehavior: Clip.none,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: responsiveHeight(context, 95)),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return OtherCategoryScreen(
                        imagePath: state.favorite[index]["image_path"],
                        name: state.favorite[index]["product_Name"],
                        description: state.favorite[index]
                        ["product_content"],
                        isFavorite: state.favorite[index]["favorite"],
                        price: state.favorite[index]["product_price"],
                        onTap: (){
                          showDialog(context: context, builder: (context) {
                            return ConfirmDialog(onPress: (){
                              context.read<FavoriteScreenCubit>().removeFromFavorite(index: index);
                              Navigator.pop(context);
                            });
                          },);
                        },
                      );
                    },
                    itemCount: state.favorite.length,
                  ),
                );
              }
              else{
                return SizedBox();
              }
            },
            )
          ],
        ),
      ),
    );
  }
}
