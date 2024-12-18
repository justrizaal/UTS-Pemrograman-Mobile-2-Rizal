import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {

//coffee for sale list
final List<Coffee> _shop = [

//black coffee
  Coffee(
  name: 'Long Black', 
  price: '10.000', 
  imagePath: 'lib/images/black.png'
  ),


//espresso
  Coffee(
  name: 'Espresso', 
  price: '10.000', 
  imagePath: 'lib/images/espresso.png'
  ),



//latte
Coffee(
  name: 'Latte', 
  price: '10.000', 
  imagePath: 'lib/images/latte.png'
  ),

//ice coffee
Coffee(
  name: 'Ice Coffee', 
  price: '10.000', 
  imagePath: 'lib/images/iced.png'
  ),





];

//user cart
List<Coffee> _userCart = [];


//get coffee list
List<Coffee> get coffeeShop => _shop;


//get user cart
List<Coffee> get userCart => _userCart;


//add item to cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}

//remove item from cart
void removeitemFromCart(Coffee coffee) {
  _userCart.remove(coffee);
  notifyListeners();
  } 
}