import 'package:flutter/material.dart';

import 'brewing_screen.dart';
import 'coffee_selection_screen.dart';
import 'final_coffee_screen.dart';
import 'grinding_screen.dart';
import 'milk_screen.dart';

class ContentSwitcherScreen extends StatefulWidget {
  const ContentSwitcherScreen({super.key});

  @override
  State<ContentSwitcherScreen> createState() => _ContentSwitcherScreenState();
}

class _ContentSwitcherScreenState extends State<ContentSwitcherScreen> {
  int _currentContentIndex = 0;

  final List<Widget> _contentWidgets = [
    const CoffeeSelectionScreen(),
    const GrindingScreen(),
    const BrewingScreen(),
    const MilkScreen(),
    const FinalCoffeeScreen(),
  ];

  void _nextContent() {
    setState(() {
      if (_currentContentIndex < _contentWidgets.length - 1) {
        _currentContentIndex++;
      }
    });
  }

  void _previousContent() {
    setState(() {
      if (_currentContentIndex > 0) {
        _currentContentIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приготовление кофе'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _contentWidgets.length,
                    (index) => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: index <= _currentContentIndex
                        ? Colors.blue
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: _contentWidgets[_currentContentIndex],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentContentIndex > 0 ? _previousContent : null,
                  child: const Text('Назад'),
                ),
                ElevatedButton(
                  onPressed: _currentContentIndex < _contentWidgets.length - 1
                      ? _nextContent
                      : null,
                  child: const Text('Далее'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}