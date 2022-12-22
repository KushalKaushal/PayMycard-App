// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/util/my_button.dart';
import 'package:flutter_application_1/util/my_card.dart';
import 'package:flutter_application_1/util/my_list_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.currency_rupee),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 189, 215, 236),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
              size: 32,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              size: 32,
            ),
          ),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 5250.20,
                    cardNumber: 7492837162,
                    color: Colors.deepPurple[400],
                    month: 11,
                    year: 26,
                  ),
                  MyCard(
                    balance: 730.23,
                    cardNumber: 87213987,
                    color: Colors.blue[400],
                    month: 09,
                    year: 24,
                  ),
                  MyCard(
                    balance: 3240.80,
                    cardNumber: 278349123,
                    color: Colors.green[400],
                    month: 10,
                    year: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      iconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send'),
                  MyButton(
                      iconImagePath: 'lib/icons/credit-card.png',
                      buttonText: 'Pay'),
                  MyButton(
                      iconImagePath: 'lib/icons/utilities.png',
                      buttonText: 'Bills'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  MyListTile(
                      iconImagePath: 'lib/icons/analysis.png',
                      title: 'Statistics',
                      subtitle: 'Payment and Income'),
                  MyListTile(
                      iconImagePath: 'lib/icons/money-transfer.png',
                      title: 'Transactions',
                      subtitle: 'Transaction History'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
