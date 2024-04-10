// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:bank/transaction_item.dart';

class DashBoard extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    // {'amount': '\$3,458', 'icon': Icons.attach_money, 'option': 'T1'},
    {
      'amount': '\$1,234',
      'icon': Icons.account_circle_outlined,
      'option': 'T1'
    },
    {'amount': '\$987', 'icon': Icons.account_circle_outlined, 'option': 'T1'},
    {'amount': '\$190', 'icon': Icons.account_circle_outlined, 'option': 'R'},
  ];
  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.grid_view_sharp,
                      color: Color(0xFFb2b7bd), size: 30),
                  onPressed: () {
                    // Add your action here
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications_none_outlined,
                      color: Color(0xFFb2b7bd), size: 32),
                  onPressed: () {
                    // Add your action here
                  },
                ),
              ],
            ),
            const Text(
              'Total Balance',
              style: TextStyle(
                  color: Color(0xFFb2b7bd), fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '\$ 10 303',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff484bb7)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '-\$10,303 Today',
                    style: TextStyle(
                        color: Color(0xFFb2b7bd), fontWeight: FontWeight.w600),
                  ),

                  Switch(
                      activeColor: const Color(0xff484bb7),
                      inactiveTrackColor: const Color(0xff484bb7),
                      thumbColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.white.withOpacity(.48);
                        }
                        return Colors.white;
                      }),
                      value: false,
                      onChanged: (value) {}),
                  // const Text(
                  //   'Statistics',
                  //   style: TextStyle(color: Colors.blue),
                  // ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: SizedBox(
                height: 80,
                width: double.maxFinite,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 11,
                    minY: 0,
                    maxY: 6, // Adjust this value based on your data range
                    titlesData: const FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    gridData: const FlGridData(
                        show: false,
                        drawHorizontalLine: true,
                        drawVerticalLine: true),
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 0),
                          const FlSpot(2, 5),
                          const FlSpot(4, 1),
                          const FlSpot(6, 4),
                          const FlSpot(8, 2),
                          const FlSpot(10, 4),
                        ],
                        // isCurved: true,
                        color: Colors.lightBlueAccent,
                        barWidth: 2,
                        belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.withOpacity(0.2),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue,
                                Color.fromARGB(255, 178, 221, 240),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Add chart title
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50, bottom: 10.0),
                  child: Text(
                    'Statistics',
                    style: TextStyle(
                        color: Color(0xff484bb7), fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            // Stack(
            //   children: [

            //   ],
            // ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xff484bb7),
                  ),
                  Container(
                    color: Colors.white,
                    height: 80,
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 10.0,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.blue,
                                  size: 40,
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$3,458',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                  ],
                                ),
                              ],
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.arrow_forward_ios,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 125,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          final transaction = transactions[index];
                          return TransactionItem(
                            amount: transaction['amount'],
                            iconData: transaction['icon'],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
