import 'package:flutter/material.dart';

class GrindingScreen extends StatefulWidget {
  const GrindingScreen({super.key});

  @override
  State<GrindingScreen> createState() => _GrindingScreenState();
}

class _GrindingScreenState extends State<GrindingScreen> {
  double _grindSize = 2.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.settings, size: 50),
          const SizedBox(height: 20),
          const Text(
            'Помол кофе',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text('Отрегулируйте степень помола'),
          const SizedBox(height: 30),
          Text('Степень помола: ${_getGrindDescription()}'),
          const SizedBox(height: 20),
          Slider(
            value: _grindSize,
            min: 1.0,
            max: 5.0,
            divisions: 4,
            onChanged: (value) {
              setState(() {
                _grindSize = value;
              });
            },
          ),
        ],
      ),
    );
  }

  String _getGrindDescription() {
    if (_grindSize < 2.0) return 'Мелкий';
    if (_grindSize < 3.0) return 'Средний';
    return 'Крупный';
  }
}