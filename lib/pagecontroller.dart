// ignore_for_file: library_private_types_in_public_api
import 'package:bank/transaction_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      'amount': '\$1,234',
      'icon': Icons.account_circle_outlined,
      'option': 'T1'
    },
    {'amount': '\$987', 'icon': Icons.account_circle_outlined, 'option': 'T1'},
    {'amount': '\$190', 'icon': Icons.account_circle_outlined, 'option': 'R'},
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController _controller = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> transactions = [
      {
        'amount': '\$1,234',
        'icon': Icons.account_circle_outlined,
        'option': 'T1'
      },
      {
        'amount': '\$3,458',
        'icon': Icons.account_circle_outlined,
        'option': 'T1'
      },
      {
        'amount': '\$987',
        'icon': Icons.account_circle_outlined,
        'option': 'T1'
      },
      {'amount': '\$190', 'icon': Icons.account_circle_outlined, 'option': 'R'},
    ];
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              // First Page
              Container(
                height: MediaQuery.of(context).size.height,
                color: const Color(0xff484bb7),
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
                              color: Colors.white, size: 35),
                          onPressed: () {
                            // Add your action here
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.settings,
                              color: Colors.white, size: 39),
                          onPressed: () {
                            // Add your action here
                          },
                        ),
                      ],
                    ),
                    const Image(
                        image: AssetImage(
                            '/Users/mac/Documents/assignmentsflutter/bank/assets/images/Screenshot 2024-04-02 at 4.17.58 PM.png')),
                    RichText(
                      text: const TextSpan(
                        text: 'Banking',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                        children: [
                          TextSpan(
                            text: ' App',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      height: 5,
                      color: Colors.lightBlue.shade300,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Column(children: [
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    // controller: email,
                                    decoration: decoration(
                                      'Your Name',
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    // controller: email,
                                    decoration: decoration(
                                      'Your Email',
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    // controller: email,
                                    decoration: decoration(
                                      'Your Password',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    // Add your action here
                                  },
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 20.0),
                                    child: Text(
                                      'Sign In',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                TextButton(
                                  onPressed: () {
                                    // Add your action here
                                  },
                                  child: RichText(
                                    text: const TextSpan(
                                      text: 'New here?',
                                      style:
                                          TextStyle(color: Color(0xFFb2b7bd)),
                                      children: [
                                        TextSpan(
                                          text: ' Create an account',
                                          style: TextStyle(
                                            color: Colors.lightBlue,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Second Page
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                // padding: EdgeInsets.only(
                //   top: MediaQuery.of(context).padding.top,
                // ),
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
                          color: Color(0xFFb2b7bd),
                          fontWeight: FontWeight.w500),
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
                                color: Color(0xFFb2b7bd),
                                fontWeight: FontWeight.w600),
                          ),
                          Switch(
                              activeColor: const Color(0xff484bb7),
                              inactiveTrackColor: const Color(0xff484bb7),
                              thumbColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white.withOpacity(.48);
                                }
                                return Colors.white;
                              }),
                              value: false,
                              onChanged: (value) {}),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 10.0),
                      child: SizedBox(
                        height: 100,
                        width: double.maxFinite,
                        child: LineChart(
                          LineChartData(
                            minX: 0,
                            maxX: 11,
                            minY: 0,
                            maxY:6, // Adjust this value based on your data range
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
                                color: Color(0xff484bb7),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            child: Column(children: [
                              Container(
                                color: Colors.white,
                                height: 100,
                              ),
                              Container(
                                color: Colors.lightBlue,
                                height: 10,
                              ),
                              Expanded(
                                child: Container(
                                  color: const Color(0xff484bb7),
                                ),
                              ),
                            ]),
                          ),

                          // const Positioned(
                          //   top: 20,
                          //   left: 0,
                          //   right: 0,
                          //   child: Card(
                          //     color: Colors.red,
                          //     elevation: 4,
                          //     margin: EdgeInsets.symmetric(
                          //         horizontal: 16, vertical: 8),
                          //     child: Padding(
                          //       padding: EdgeInsets.all(16),
                          //       child: Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Row(
                          //             children: [
                          //               Icon(
                          //                 Icons.account_circle_outlined,
                          //                 color: Colors.blue,
                          //                 size: 40,
                          //               ),
                          //               SizedBox(width: 16),
                          //               Column(
                          //                 crossAxisAlignment:
                          //                     CrossAxisAlignment.start,
                          //                 children: [
                          //                   Text(
                          //                     '\$3,458',
                          //                     style: TextStyle(
                          //                       fontSize: 18,
                          //                       fontWeight: FontWeight.bold,
                          //                       color: Colors.black,
                          //                     ),
                          //                   ),
                          //                   SizedBox(height: 4),
                          //                 ],
                          //               ),
                          //             ],
                          //           ),
                          //           CircleAvatar(
                          //             radius: 25,
                          //             backgroundColor: Colors.white,
                          //             child: Icon(Icons.arrow_forward_ios,
                          //                 color: Colors.blue),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          SizedBox(
                            height: double.maxFinite,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
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
              // Third Page
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Third Page',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                ),
              ),
            ],
            onPageChanged: (int index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: 10.0,
                    height: 10.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPageIndex == i
                          ? Colors.lightBlue.shade300
                          : const Color(0xFFb2b7bd).withOpacity(0.5),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

InputDecoration decoration(String label) {
  return InputDecoration(
    hintText: label,
    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
    hintStyle: const TextStyle(
      color: Color(0xFFb2b7bd),
      fontSize: 17,
    ),
    // prefixIcon: icon,
    // prefixIconColor: Colors.amber[400],
    // filled: true,
    // fillColor: Colors.white,
    focusedBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff484bb7), width: 2.0),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(color: Color(0xff484bb7), width: 2.0),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
    ),
  );
}
