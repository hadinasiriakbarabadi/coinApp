import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget{
  final Map rates;
  const DetailsPage({required this.rates});
  @override
  Widget build(BuildContext context) {
    List _curentcies=rates.keys.toList();
    List _exchangerates=rates.values.toList();

 return Scaffold(body:
(
   SafeArea(
     child: ListView.builder(
         itemCount:_curentcies.length ,
         itemBuilder: (_context,_index){
           String _currency=_curentcies[_index].toString().toUpperCase();
           String _exchangeRate=_exchangerates[_index].toString();
           return ListTile(title: Text("$_currency :$_exchangeRate",style:const TextStyle(color:Colors.white ),),);
         }),
   )
 )  );
}
}