import 'package:flutter/material.dart';

class CategoryData {
  final String name;
  final IconData icon;
  final Color color;

  const CategoryData(
      {required this.name, required this.icon, required this.color});
}

const List<CategoryData> expenseCategories = [
  CategoryData(name: 'Food', icon: Icons.restaurant, color: Colors.orange),
  CategoryData(name: 'Transport', icon: Icons.directions_car, color: Colors.blue),
  CategoryData(name: 'Shopping', icon: Icons.shopping_bag, color: Colors.pink),
  CategoryData(name: 'Bills', icon: Icons.receipt, color: Colors.red),
  CategoryData(name: 'Entertainment', icon: Icons.movie, color: Colors.purple),
  CategoryData(name: 'Health', icon: Icons.local_hospital, color: Colors.green),
  CategoryData(name: 'Education', icon: Icons.school, color: Colors.teal),
  CategoryData(name: 'Other', icon: Icons.more_horiz, color: Colors.grey),
];

IconData getCategoryIcon(String category) {
  return expenseCategories
      .firstWhere((c) => c.name == category,
          orElse: () => expenseCategories.last)
      .icon;
}

Color getCategoryColor(String category) {
  return expenseCategories
      .firstWhere((c) => c.name == category,
          orElse: () => expenseCategories.last)
      .color;
}
