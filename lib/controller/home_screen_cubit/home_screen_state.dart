part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenDefault extends HomeScreenState{
  final List categories;
  final List banners;
  final int showedBanner;
  HomeScreenDefault({required this.showedBanner,required this.categories, required this.banners});
}

final class HomeScreenSelectedCategory extends HomeScreenState {
  final List selectedCategory ;
  final List categories;
  final String category;
  final int index;

  HomeScreenSelectedCategory({required this.selectedCategory , required this.index , required this.category ,required this.categories });
}
