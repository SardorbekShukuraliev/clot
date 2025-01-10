import 'package:flutter/material.dart';
import 'package:justtrainingmygryobanniyskill/core/consts/color.dart';

class CheckerWidget extends StatelessWidget {
  final String process;
  final String date;
  final bool checker;

  const CheckerWidget({
    super.key,
    required this.process,
    required this.date,
    required this.checker,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Checkbox(
              checkColor: AppColors.textareas_bg,
              value: checker,
              onChanged: (bool? newValue) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            process,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            date,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
