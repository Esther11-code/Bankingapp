import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTotalBalanceCard(),
          const SizedBox(height: 20),
          _buildTransactionList(),
        ],
      ),
    );
  }

  Widget _buildTotalBalanceCard() {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$10,303',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '-\$10,303 Today',
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  'Statistics',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recent Transactions',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildTransactionItem('John Doe', '\$3,458', Icons.credit_card),
        _buildTransactionItem('Jane Smith', '\$1,234', Icons.credit_card),
        _buildTransactionItem('Alice Johnson', '\$987', Icons.credit_card),
        _buildTransactionItem('Bob White', '\$190', Icons.credit_card),
      ],
    );
  }

  Widget _buildTransactionItem(String name, String amount, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
      trailing: Text(amount),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DashboardScreen(),
  ));
}
