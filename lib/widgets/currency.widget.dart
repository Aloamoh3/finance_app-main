import 'package:flutter/material.dart';

class CurrencyWidget extends StatelessWidget {
  final String currency;
  final String amount;
  final String image;

  const CurrencyWidget({
    required this.currency,
    required this.amount,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFF2E2E2E)),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 42,
            height: 42,
            fit: BoxFit.cover,
          ),

          const SizedBox(width: 16),

          // Currency Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                currency,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                amount,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
