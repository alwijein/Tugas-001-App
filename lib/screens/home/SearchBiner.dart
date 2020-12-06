import 'package:flutter/material.dart';

class SearchBiner extends SearchDelegate{
  @override
  List<Widget> buildActions(BuildContext context){
    return <Widget>[
      IconButton(icon: Icon(Icons.close), onPressed: (){
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
      return IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
        Navigator.pop(context);
      });
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return Container(
        // child: Center(child: Text(selectedResult),),
      );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}