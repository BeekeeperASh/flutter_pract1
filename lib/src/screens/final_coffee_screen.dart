import 'package:flutter/material.dart';

class FinalCoffeeScreen extends StatelessWidget {
  const FinalCoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.emoji_emotions, size: 50),
          const SizedBox(height: 20),
          const Text(
            'Ваш кофе готов!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[100],
            child: const Column(
              children: [
                Text('Время приготовления: 5 мин'),
                SizedBox(height: 8),
                Text('Температура подачи: 65°C'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}