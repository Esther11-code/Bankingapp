import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String amount;
  final IconData iconData;

  const TransactionItem({
    super.key,
    required this.amount,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 222, 227, 232),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
            )
          ]),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconData, color: Colors.blue, size: 40),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      amount,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ],
            ),
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class MyListViewWithCustomDesign extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    // {'amount': '\$3,458', 'icon': Icons.attach_money,},
    {
      'amount': '\$1,234',
      'icon': Icons.attach_money,
    },
    {
      'amount': '\$987',
      'icon': Icons.attach_money,
    },
    {
      'amount': '\$190',
      'icon': Icons.attach_money,
    },
  ];

  MyListViewWithCustomDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banking App'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return TransactionItem(
            amount:
                transaction['amount'], // Make sure this key exists in the map
            iconData:
                transaction['icon'], // Make sure this key exists in the map
            // Make sure this key exists in the map
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyListViewWithCustomDesign(),
  ));
}
