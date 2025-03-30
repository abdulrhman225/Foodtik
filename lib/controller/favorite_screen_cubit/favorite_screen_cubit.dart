import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'favorite_screen_state.dart';

class FavoriteScreenCubit extends Cubit<FavoriteScreenState> {
  FavoriteScreenCubit() : super(FavoriteScreenInitial());

  List favoritesProduct = [
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : true
    },
  ];

  getFavoriteProduct(){
    emit(RemoveFromFavoriteState(favorite: favoritesProduct));
  }
  removeFromFavorite({required int index}){
    favoritesProduct.removeAt(index);
    emit(FavoriteScreenInitial());
    emit(RemoveFromFavoriteState(favorite: favoritesProduct));
  }

}
