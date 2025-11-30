import 'package:auto_car/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> car;

  const CarDetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackGroundColorW,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: AppColors.kFirstTextColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Details',
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------ HEADER (IMAGE + GRADIENT OVERLAY) ------------------
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  ),
                  child: Image.asset(
                    car["image"],
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // Black fade overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(.45),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),

                // Name + Model
                Positioned(
                  left: 16,
                  bottom: 22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        car["name"],
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(color: Colors.black54, blurRadius: 4),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Model: ${car["model"]}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(.85),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            // ------------------ PRICE CARD ------------------
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 22,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.kSecondaryColor.withOpacity(.85),
                      AppColors.kSecondaryColor.withOpacity(.65),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: AppColors.kSecondaryColor.withOpacity(.4),
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "\$${car["price"]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ------------------ SPECS SECTION (glass style) ------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Specifications",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kFirstTextColor.withOpacity(.9),
                ),
              ),
            ),

            const SizedBox(height: 12),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(.7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.2),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
                border: Border.all(
                  color: AppColors.kPrimaryColor.withOpacity(.2),
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  _specRow("Engine", "Turbocharged 2.0L"),
                  const Divider(),
                  _specRow("Horsepower", "250 HP"),
                  const Divider(),
                  _specRow("Fuel Type", "Gasoline"),
                  const Divider(),
                  _specRow("Transmission", "8-speed Automatic"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ------------------ DESCRIPTION ------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kFirstTextColor.withOpacity(.9),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                "This car is carefully designed to offer comfort, durability, "
                "and power. You will enjoy a smooth driving experience with "
                "excellent road performance and a stylish modern design.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: AppColors.kFirstTextColor.withOpacity(.75),
                ),
              ),
            ),

            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }

  // ------------------ SPEC ROW ------------------
  Widget _specRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColors.kFirstTextColor,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.kPrimaryColor.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
