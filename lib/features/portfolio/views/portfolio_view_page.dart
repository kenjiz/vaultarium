import 'package:flutter/material.dart';

class PortfolioViewPage extends StatelessWidget {
  const PortfolioViewPage({super.key, required this.portfolioId});

  final String portfolioId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Portfolio View')));
  }
}
