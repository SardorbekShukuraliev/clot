import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFilterButton(Icons.filter_alt, '2', isSelected: true),
          _buildTextButton('On Sale', false),
          _buildDropdownButton('Price', true),
          _buildDropdownButton('Sort by', false),
          GestureDetector(
            onTap: () {
              _showBottomSheetGender(context); // Показываем модальное окно
            },
            child: _buildDropdownButton('Men', true),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterButton(IconData icon, String label, {bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey[800],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Icon(IconsaxPlusBroken.filter, color: Colors.white, size: 20),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton(String text, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey[800],
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildDropdownButton(String text, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey[800],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 4),
          const Icon(IconsaxPlusBroken.arrow_down_2, color: Colors.white),
        ],
      ),
    );
  }

  void _showBottomSheetGender(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppColors.auth_bg_color,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Clear',
                    style: TextStyle(color: Colors.purple, fontSize: 16),
                  ),
                  const Text(
                    'Gender',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Закрываем окно
                    },
                    icon: const Icon(IconsaxPlusBroken.arrow_down_2, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 380,
                height: 60,
                child: _buildBottomSheetOption(
                  'Men',
                  textColor: Colors.white,
                  backgroundColor: AppColors.textareas_bg,
                ),
              ),
              Container(
                width: 380,
                height: 60,
                child: _buildBottomSheetOption(
                  'Women',
                  textColor: Colors.white,
                  backgroundColor: AppColors.textareas_bg,
                ),
              ),
              Container(
                width: 380,
                height: 60,
                child: _buildBottomSheetOption(
                  'Unisex',
                  textColor: Colors.white,
                  backgroundColor: AppColors.textareas_bg,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBottomSheetOption(String text, {Color textColor = Colors.white, Color backgroundColor = Colors.grey}) {
    return GestureDetector(
      onTap: () {
        print('Selected: $text');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}
