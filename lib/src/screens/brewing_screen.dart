import 'package:flutter/material.dart';

class BrewingScreen extends StatelessWidget {
  const BrewingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.water_drop, size: 50),
          const SizedBox(height: 20),
          const Text(
            'Заваривание',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text('Выберите способ заваривания'),
          const SizedBox(height: 30),
          Column(
            children: [
              _BrewingMethod(method: 'Эспрессо'),
              const SizedBox(height: 10),
              _BrewingMethod(method: 'Френч-пресс'),
              const SizedBox(height: 10),
              _BrewingMethod(method: 'Аэропресс'),
            ],
          ),
        ],
      ),
    );
  }
}

class _BrewingMethod extends StatelessWidget {
  final String method;

  const _BrewingMethod({required this.method});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(method),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Выбрать'),
          ),
        ],
      ),
    );
  }
}