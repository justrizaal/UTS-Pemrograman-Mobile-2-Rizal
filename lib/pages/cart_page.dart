import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starwars_coffee/components/coffee_tile.dart';
import 'package:starwars_coffee/models/coffee.dart';
import 'package:starwars_coffee/models/coffee_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeitemFromCart(coffee);
  }


  //Checkbutton tap
  void checkout() {
    /*

    */
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [


            //heading
            Text(
              'Keranjangmu',
              style: TextStyle(fontSize: 20),
            ),

            //list of cart items
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, Index) {  
            //get individual cart item
            Coffee eachCoffee = value.userCart[Index];

            //return coffee tile
            return CoffeeTile(coffee: eachCoffee,
             onPressed: () => removeFromCart(eachCoffee),
             icon: Icon(Icons.delete),);
              },
              ),
            ),

             GestureDetector(
              onTap: checkout,
               child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(12),
                  ),
                child: const Center(
                  child: Text(
                    "Checkout Sekarang",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                
                           ),
             )
            
          ],
        ),
      ),
    ),
    );
  }
}
