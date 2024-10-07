import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({super.key, required this.timezone, required this.date, required this.time});

  final styleTextTitle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);
  final styleText = const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black);
  
  final String timezone;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: 40,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Zona horaria: ', style: styleTextTitle,),
                Text(timezone, style: styleText,),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('Fecha: ', style: styleTextTitle,),
                Text(date, style: styleText,),
                  ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('Hora: ', style: styleTextTitle,),
                Text(time, style: styleText,),
              ],),    
        ],
      ),
    );
  }
}
