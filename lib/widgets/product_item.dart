import 'package:flutter/material.dart';
import '../screens/product_details.dart';

class ProductGrid extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductGrid(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetailsScreen.routeName, arguments: id,);
          },
          child: Image.network(imageUrl, fit: BoxFit.cover,)),
      footer: GridTileBar(
        leading: IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},),
        trailing: IconButton(icon: Icon(Icons.add_shopping_cart),),
        title: Text(title),
        backgroundColor: Colors.black38,
      ),
    );
  }
}
