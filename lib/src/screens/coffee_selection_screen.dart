import 'package:flutter/material.dart';

class CoffeeSelectionScreen extends StatelessWidget {
  const CoffeeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.coffee, size: 50),
          const SizedBox(height: 20),
          const Text(
            'Выбор кофе',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text('Выберите тип кофейных зерен'),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CoffeeTypeButton(label: 'Арабика'),
              _CoffeeTypeButton(label: 'Робуста'),
              _CoffeeTypeButton(label: 'Смесь'),
            ],
          ),
        ],
      ),
    );
  }
}

class _CoffeeTypeButton extends StatelessWidget {
  final String label;

  const _CoffeeTypeButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}