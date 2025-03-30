part of 'favorite_screen_cubit.dart';

@immutable
sealed class FavoriteScreenState {}

final class FavoriteScreenInitial extends FavoriteScreenState {}

final class RemoveFromFavoriteState extends FavoriteScreenState {
  final List favorite;

  RemoveFromFavoriteState({required this.favorite});
}
