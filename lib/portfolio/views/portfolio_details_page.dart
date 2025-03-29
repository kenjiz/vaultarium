import 'package:flutter/material.dart';

class PortfolioDetailsPage extends StatelessWidget {
  const PortfolioDetailsPage({super.key, required this.portfolioId});

  final String portfolioId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Portfolio Details')));
  }
}
