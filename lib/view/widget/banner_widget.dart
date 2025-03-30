import 'package:Foodtik/constant_colors.dart';
import 'package:Foodtik/controller/home_screen_cubit/home_screen_cubit.dart';
import 'package:Foodtik/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          BlocBuilder<HomeScreenCubit, HomeScreenState>(
            builder: (context, state) {
              if (state is HomeScreenDefault) {
                return SizedBox(
                  width: responsiveWidth(context, 370),
                  height: responsiveHeight(context, 128),
                  child: PageView.builder(
                    onPageChanged: (value) {
                      context.read<HomeScreenCubit>().changeBanner(value);
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: responsiveWidth(context, 370),
                        height: responsiveHeight(context, 128),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    state.banners[index]["image_path"]))),
                      );
                    },
                    itemCount: state.banners.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              }
              else {
                return SizedBox();
              }
            },
          ),
          SizedBox(
            height: responsiveHeight(context, 5),
          ),
          BlocBuilder<HomeScreenCubit, HomeScreenState>(
            builder: (context, state) {
              if (state is HomeScreenDefault){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: responsiveHeight(context, 4),
                      width: responsiveWidth(context, 20),
                      decoration: BoxDecoration(
                          color:state.showedBanner == 0?ConstantColors.green_background:Color(0xFFDBF4D1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 4),
                    ),
                    Container(
                      height: responsiveHeight(context, 4),
                      width: responsiveWidth(context, 20),
                      decoration: BoxDecoration(
                          color: state.showedBanner == 1?ConstantColors.green_background:Color(0xFFDBF4D1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 4),
                    ),
                    Container(
                      height: responsiveHeight(context, 4),
                      width: responsiveWidth(context, 20),
                      decoration: BoxDecoration(
                          color: state.showedBanner == 2?ConstantColors.green_background:Color(0xFFDBF4D1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 4),
                    ),
                    Container(
                      height: responsiveHeight(context, 4),
                      width: responsiveWidth(context, 20),
                      decoration: BoxDecoration(
                          color: state.showedBanner == 3?ConstantColors.green_background:Color(0xFFDBF4D1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    SizedBox(
                      width: responsiveWidth(context, 4),
                    ),
                    Container(
                      height: responsiveHeight(context, 4),
                      width: responsiveWidth(context, 20),
                      decoration: BoxDecoration(
                          color: state.showedBanner == 4?ConstantColors.green_background:Color(0xFFDBF4D1),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                );
              }else{
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
