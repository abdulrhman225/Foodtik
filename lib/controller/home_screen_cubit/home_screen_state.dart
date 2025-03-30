part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenSelectedCategory extends HomeScreenState {
  final List selectedCategory ;
  final String category;
  final int index;

  HomeScreenSelectedCategory({required this.selectedCategory , required this.index , required this.category});
}
