// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int month;
  final int year;
  final color;
  const MyCard({super.key, 
  required this.balance, 
  required this.cardNumber, 
  required this.month, 
  required this.year,
  required this.color,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(16)
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text('Balance',
                    style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('\$' + balance.toString(),
                    style: TextStyle(color: Colors.white,
                    fontSize: 28),
                    ),
                    SizedBox(height: 30,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                      Text(cardNumber.toString(),
                      style: TextStyle(color: Colors.white),),
                      Text(month.toString()+ '/' +year.toString(),
                      style: TextStyle(color: Colors.white),), 
                    ],)
                  ],
                ),
              ),
    );
  }
}