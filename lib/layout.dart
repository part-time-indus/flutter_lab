//TODO 1: Column Widget composed of Image, title row, button row and text
  //TODO 1A: Title Widget composed of Row Widget
    //TODO 1AA: Row widget composed of Column Widget and Row Widget
      //TODO 1AAA: Column Widget composed of Place Name (Bold Title) and it's Location
      //TODO 1AAB: Row Widget composed of fav icon and rating (int)
  //TODO 1B: Button Widget composed of Row Widget
    //TODO 1BA: Row Widget composed of 3 Column Widgets
      //TODO 1BAA: Column Widets composed of Icon and Text
  //TODO 1C: Text Widget 

  import 'package:flutter/material.dart';

  class Screen extends StatelessWidget{
    const Screen({Key? key}): super(key: key);
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [image(), title(),]
        ),
      );    
    }

    Widget title(){
      return Row(children: [name(), rating()],);
    }

    Widget rating(){
      return Row(
        children: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.star),),
          const Text('41')
        ],
      );
    }

    Widget name(){
      return Column(
        children: const <Widget>[
          Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
          Text ('Kandersteg, Switzerland'),
        ],
      );
    }

    Widget image(){
      return Image.asset('sky.jpeg', fit: BoxFit.cover,);
    }
  }