import 'package:flutter/material.dart';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/menu_item.dart'; // Import MenuItem

class FeaturedCafeItems extends StatelessWidget {
  const FeaturedCafeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const DisplayCard(
      title: "Featured Café Items",
      child: Column(
        children: [
          MenuItem(
            itemName: 'Cappuccino',
            price: 4.99,
          ),
          SizedBox(height: 8), // Space between menu items
          MenuItem(
            itemName: 'Blueberry Muffin',
            price: 3.49,
          ),
          SizedBox(height: 8), // Space between menu items
          MenuItem(
            itemName: 'Latte',
            price: 5.49,
          ),
        ],
      ),
    );
  }
}
