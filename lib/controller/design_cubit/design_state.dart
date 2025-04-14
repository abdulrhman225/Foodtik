part of 'design_cubit.dart';

@immutable
sealed class DesignState {}

final class DesignInitial extends DesignState {}
final class ChangeDesignState extends DesignState {
  final bool isLightTheme;

  ChangeDesignState({required this.isLightTheme});
}
