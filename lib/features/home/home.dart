// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'components/card_list.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String timezone = '';
  String date = '';
  String time = '';

  //Obtener la zona horaria, la hora y la fecha del usuario actual
  Future<void> getCurrentInfoUser() async {
    final now = DateTime.now();
    timezone = now.timeZoneName.toString().toUpperCase();
    date = DateFormat('yyyy-MM-dd').format(now);
    time = DateFormat('HH:mm:ss').format(now);
    print('Zona horaria: $timezone, Hora: $time, Fecha: $date');
  }

  //Lllamar a la funcion getCurrentInfoUser
  @override
  void initState() {
    super.initState();
    getCurrentInfoUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5 + 1,
          itemBuilder: (context, index) {

            //Primera card perzonalizada fuera del builder
            if (index == 0) {
              return CardList(
                timezone: timezone,
                date: date,
                time: time,
              );
            }else{
              return CardList(
                timezone: 'Zona horaria',
                date: 'Fecha',
                time: 'Hora',
              );
            }

          },
        ),
    );
  }
}

