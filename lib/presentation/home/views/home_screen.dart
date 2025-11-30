import 'package:auto_car/core/constants/colors.dart';
import 'package:auto_car/core/constants/const_image.dart';
import 'package:auto_car/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> carsJson = const [
    {
      "name": "Toyota Camry",
      "model": "2021",
      "price": 25000,
      "image": ImageAssets.car1,
    },
    {
      "name": "Honda Civic",
      "model": "2020",
      "price": 22000,
      "image": ImageAssets.car2,
    },
    {
      "name": "BMW 3 Series",
      "model": "2022",
      "price": 41000,
      "image": ImageAssets.car1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.kBackGroundColorW,
      appBar: AppBar(
        title: const Text("Auto Cars"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColors.kFirstTextColor,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppColors.kPrimaryColor),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: AppColors.kFirstTextColor),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: AppColors.kFirstTextColor,
              ),
              title: const Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: ListView.builder(
        itemCount: carsJson.length,
        itemBuilder: (context, index) {
          final car = carsJson[index];

          return GestureDetector(
            onTap: () {
              context.push(AppRoutes.carDetails, extra: car);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                // Lighter, elegant orange tint background
                color: AppColors.kPrimaryColor.withOpacity(0.20),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                    child: Image.asset(
                      car["image"],
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          car["name"],
                          style: const TextStyle(
                            fontSize: 20,
                            color: AppColors.kFirstTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          "Model: ${car["model"]}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.kFirstTextColor,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          "\$${car["price"]}",
                          style: const TextStyle(
                            fontSize: 18,
                            color: AppColors.kSecondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
