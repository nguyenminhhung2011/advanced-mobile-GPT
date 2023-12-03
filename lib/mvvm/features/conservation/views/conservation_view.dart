import 'package:flutter/material.dart';

class ConservationView extends StatefulWidget {
  const ConservationView({super.key});

  @override
  State<ConservationView> createState() => _ConservationViewState();
}

class _ConservationViewState extends State<ConservationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        
      ),
    );
  }
}
