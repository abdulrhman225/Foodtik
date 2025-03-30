import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:Foodtik/view/screen/all_category_screen.dart';
import 'package:Foodtik/view/screen/filter_screen.dart';
import 'package:Foodtik/view/screen/location_screen.dart';
import 'package:Foodtik/view/widget/category_widget.dart';
import 'package:Foodtik/view/screen/other_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/search_text_input_widget.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      color: Color(0xFFF5F5F5),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LocationScreen(),
                            ));
                      },
                      child: Icon(
                        Icons.location_pin,
                        color: ConstantColors.green_background,
                        size: 15,
                      ),
                    )),
                title: Text(
                  "Current location ▾",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ),
                subtitle: Text(
                  "Jl. Soekarno Hatta 15A Malang",
                  style: TextStyle(
                    color: ConstantColors.TextColor,
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
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      size: 15,
                    )),
              ),
            ),
            SizedBox(
              height: responsiveHeight(context, 22),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 30)),
              child: SearchTextInputWidget(
                hint: "Search menu, restaurant or etc",
                textEditingController: searchTextEditingController,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                suffixIcon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterScreen(),
                          ));
                    },
                    child: Icon(
                      Icons.filter_alt,
                      color: Colors.grey,
                    )),
              ),
            ),
            SizedBox(
              height: responsiveHeight(context, 30),
            ),
            BlocBuilder<HomeScreenCubit, HomeScreenState>(
              builder: (context, state) {
                if (state is HomeScreenSelectedCategory) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 30)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                        HomeScreenCubit().categories.length,
                        (index) {
                          if (index == state.index) {
                            return CategoryWidget(
                              imagePath: HomeScreenCubit().categories[index]
                                  ["image_path"],
                              category: HomeScreenCubit().categories[index]
                                  ["name"],
                              backgroundColor: ConstantColors.green_background,
                              textColor: Colors.white,
                              index: index,
                            );
                          } else {
                            return CategoryWidget(
                              imagePath: HomeScreenCubit().categories[index]
                                  ["image_path"],
                              category: HomeScreenCubit().categories[index]
                                  ["name"],
                              backgroundColor: Colors.white,
                              textColor: ConstantColors.TextColor,
                              index: index,
                            );
                          }
                        },
                      )),
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 30)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                        HomeScreenCubit().categories.length,
                        (index) {
                          if (index == 0) {
                            return CategoryWidget(
                              imagePath: HomeScreenCubit().categories[index]
                                  ["image_path"],
                              category: HomeScreenCubit().categories[index]
                                  ["name"],
                              backgroundColor: ConstantColors.green_background,
                              textColor: Colors.white,
                              index: index,
                            );
                          } else {
                            return CategoryWidget(
                              imagePath: HomeScreenCubit().categories[index]
                                  ["image_path"],
                              category: HomeScreenCubit().categories[index]
                                  ["name"],
                              backgroundColor: Colors.white,
                              textColor: ConstantColors.TextColor,
                              index: index,
                            );
                          }
                        },
                      )),
                    ),
                  );
                }
              },
            ),
            BlocBuilder<HomeScreenCubit, HomeScreenState>(
              builder: (context, state) {
                if (state is HomeScreenSelectedCategory) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: responsiveHeight(context, 80)),
                    child: GridView.builder(
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: responsiveHeight(context, 95)),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return OtherCategoryScreen(
                          imagePath: state.selectedCategory[index]["image_path"],
                          name: state.selectedCategory[index]["product_Name"],
                          description: state.selectedCategory[index]
                              ["product_content"],
                          isFavorite: state.selectedCategory[index]["favorite"],
                          price: state.selectedCategory[index]["product_price"],
                          onTap: (){
                            context.read<HomeScreenCubit>().changeFavorite(category: state.category, categoryIndex: state.index , elementIndex: index);
                          },
                        );
                      },
                      itemCount: state.selectedCategory.length,
                    ),
                  );
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: responsiveWidth(context, 30)),
                    child: AllCategoryScreen(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
