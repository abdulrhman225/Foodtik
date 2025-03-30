import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(HomeScreenInitial());


  List categories = [
    {
      "image_path" : "",
      "name" : "All"
    },
    {
      "image_path" : "assets/images/burger.png",
      "name" : "Burger"
    },
    {
      "image_path" : "assets/images/pizza.png",
      "name" : "Pizza"
    },
    {
      "image_path" : "assets/images/sandwich.png",
      "name" : "Sandwich"
    },
  ];
  List banners = [
    {
      "image_path" : "assets/images/banner.png",
    },
    {
      "image_path" : "assets/images/banner.png",
    },
    {
      "image_path" : "assets/images/banner.png",
    },
    {
      "image_path" : "assets/images/banner.png",
    },
    {
      "image_path" : "assets/images/banner.png",
    },
  ];

  List pizzas = [
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
  ];
  List burger = [
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
  ];
  List sandwich = [
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
    {
      "image_path": "assets/images/first_burger.png",
      "product_Name": "Cheese Burger",
      "product_price": "20.00",
      "product_content": "100 gr chicken + tomato + cheese  Lettuce",
      "favorite" : false
    },
  ];

  getDefaultData(){
    emit(HomeScreenDefault(categories: categories,banners:  banners ,showedBanner:  0));
  }

  changeBanner(int index){
    emit(HomeScreenDefault(categories: categories,banners:  banners ,showedBanner:  index));
  }

  getCategory({required String productName , required int index}){
    switch(productName){
      case "All" :
        emit(HomeScreenDefault(categories: categories,banners:  banners ,showedBanner:  0));
        break;
      case "Burger":
        emit(HomeScreenSelectedCategory(selectedCategory: burger , index: index , category: "Burger" , categories:  categories));
        break;
      case"Pizza":
        emit(HomeScreenSelectedCategory(selectedCategory: pizzas , index:  index, category: "Pizza", categories:  categories));
        break;
      case"Sandwich":
        emit(HomeScreenSelectedCategory(selectedCategory: sandwich , index: index , category: "Sandwich", categories:  categories));
        break;
    }

  }

  changeFavorite({required String category , required int categoryIndex , required int elementIndex}){
    switch(category){
      case "Burger":
        burger.elementAt(elementIndex)["favorite"] = ! burger.elementAt(elementIndex)["favorite"];
        emit(HomeScreenInitial());
        emit(HomeScreenSelectedCategory(selectedCategory: burger , index: categoryIndex , category: category , categories: categories));
        break;
      case"Pizza":
        pizzas.elementAt(elementIndex)["favorite"] = ! pizzas.elementAt(elementIndex)["favorite"];
        emit(HomeScreenInitial());
        emit(HomeScreenSelectedCategory(selectedCategory: pizzas , index:  categoryIndex, category: category, categories: categories));
        break;
      case"Sandwich":
        sandwich.elementAt(elementIndex)["favorite"] = ! sandwich.elementAt(elementIndex)["favorite"];
        emit(HomeScreenInitial());
        emit(HomeScreenSelectedCategory(selectedCategory: sandwich , index: categoryIndex , category: category, categories: categories));
        break;
    }
  }

}
