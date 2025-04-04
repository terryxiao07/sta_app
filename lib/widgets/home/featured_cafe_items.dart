import 'dart:async';
import 'package:flutter/material.dart';
import 'package:app/widgets/components/display_card.dart';
import 'package:app/widgets/components/menu_item.dart';

class FeaturedCafeItems extends StatefulWidget {
  const FeaturedCafeItems({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FeaturedCafeItemsState createState() => _FeaturedCafeItemsState();
}

class _FeaturedCafeItemsState extends State<FeaturedCafeItems> {
  static const List<MenuItem> menuItems = [
    MenuItem(itemName: 'Cappuccino', price: 4.99),
    MenuItem(itemName: 'Muffin', price: 3.49),
    MenuItem(itemName: 'Latte', price: 5.49),
    MenuItem(itemName: 'Espresso', price: 2.99),
    MenuItem(itemName: 'Croissant', price: 3.99),
    MenuItem(itemName: 'Iced Coffee', price: 4.49),
    MenuItem(itemName: 'Bagel', price: 2.79),
    MenuItem(itemName: 'Mocha', price: 5.29),
  ];

  int startIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        startIndex = (startIndex + itemsPerPage) % menuItems.length;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  int get itemsPerPage => MediaQuery.of(context).size.width > 740 ? 4 : 2;

  @override
  Widget build(BuildContext context) {
    final int itemsToShow = itemsPerPage;
    final List<MenuItem> displayedItems = menuItems.sublist(
      startIndex, 
      (startIndex + itemsToShow) <= menuItems.length
          ? startIndex + itemsToShow
          : menuItems.length,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        return DisplayCard(
          title: "Featured Café Items",
          child: SizedBox(
            height: constraints.maxWidth > 740 ? 280 : 600,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: itemsToShow, // 2 or 4 depending on screen size
                childAspectRatio: 1, // Adjust ratio to prevent overflow
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: displayedItems.length,
              itemBuilder: (context, index) => SizedBox( 
                height: 120, // Ensure each item has a fixed height
                child: displayedItems[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
