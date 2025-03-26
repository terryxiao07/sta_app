import 'package:flutter/material.dart';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/menu_item.dart'; // Import MenuItem

class FeaturedCafeItems extends StatelessWidget {
  const FeaturedCafeItems({super.key});

  @override
  Widget build(BuildContext context) {
    // List of featured menu items
    const List<MenuItem> menuItems = [
      MenuItem(itemName: 'Cappuccino', price: 4.99),
      MenuItem(itemName: 'Muffin', price: 3.49),
      MenuItem(itemName: 'Latte', price: 5.49),
      MenuItem(itemName: 'Espresso', price: 2.99),
      MenuItem(itemName: 'Croissant', price: 3.99),
      MenuItem(itemName: 'Iced Coffee', price: 4.49),
      MenuItem(itemName: 'Bagel', price: 2.79),
      MenuItem(itemName: 'Mocha', price: 5.29),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWideScreen = constraints.maxWidth > 740; // TV screen detection

        return DisplayCard(
          title: "Featured Café Items",
          child: SizedBox(
            height: isWideScreen ? 140 : 500, // Adjust height based on layout
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isWideScreen ? 4 : 2, // 4x1 for TV, 2x4 for normal
                childAspectRatio: 1, // Ensures square items
                crossAxisSpacing: 12, // Spacing between items
                mainAxisSpacing: 12, // Spacing between rows
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(), // Prevents grid from being scrollable
              itemCount: menuItems.length,
              itemBuilder: (context, index) => menuItems[index],
            ),
          ),
        );
      },
    );
  }
}
