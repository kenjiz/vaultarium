import 'package:flutter/material.dart';

class PortfolioEditPage extends StatelessWidget {
  const PortfolioEditPage({super.key, required this.portfolioId});

  final String portfolioId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Portfolio Edit')));
  }
}
