import 'package:flutter/material.dart';

import '../../../core/consts/back_button_on_left_top.dart';
import '../sign_in/forgot_password.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1B29), // Тёмный фон
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            // Кнопка Назад
            BackButtonOnLeftTop(),
            const SizedBox(height: 20),
            // Заголовок
            const Text(
              "Create Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Поля ввода
            _buildTextField("Firstname"),
            const SizedBox(height: 16),
            _buildTextField("Lastname"),
            const SizedBox(height: 16),
            _buildTextField("Email Address"),
            const SizedBox(height: 16),
            _buildTextField("Password", isPassword: true),
            const SizedBox(height: 30),
            // Кнопка Продолжить
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Логика кнопки
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C5DD3), // Цвет кнопки
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // Радиус углов
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Ссылка на восстановление пароля (слева)
            Row(
              children: [
                const Text(
                  "Forgot Password ? ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Forgot_Password_Page()),
                    );

                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.white, // Белый цвет текста
                      fontSize: 14,
                      fontWeight: FontWeight.w500, // Полужирный шрифт
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Метод для создания поля ввода
  Widget _buildTextField(String hintText, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: const Color(0xFF29293D), // Цвет фона поля
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
