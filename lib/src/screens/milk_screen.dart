import 'package:flutter/material.dart';

class MilkScreen extends StatefulWidget {
  const MilkScreen({super.key});

  @override
  State<MilkScreen> createState() => _MilkScreenState();
}

class _MilkScreenState extends State<MilkScreen> {
  String _selectedMilk = 'Обычное';

  final List<String> _milkOptions = [
    'Обычное',
    'Обезжиренное',
    'Соевое',
    'Миндальное',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.local_cafe, size: 50),
          const SizedBox(height: 20),
          const Text(
            'Выбор молока',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text('Выберите тип молока'),
          const SizedBox(height: 30),
          Column(
            children: _milkOptions.map((milk) => RadioListTile<String>(
              title: Text(milk),
              value: milk,
              groupValue: _selectedMilk,
              onChanged: (value) {
                setState(() {
                  _selectedMilk = value!;
                });
              },
            )).toList(),
          ),
        ],
      ),
    );
  }
}