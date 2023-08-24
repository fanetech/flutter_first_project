import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  final categories = const [
    {
      'icon': Icons.track_changes_outlined,
      'color': Color(0xFF605CF4),
      'title': 'Arcabe'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {'icon': Icons.sports_esports, 'color': Color(0xFF7182f2), 'title': 'More'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            color: Colors.green,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [Icon(categories[index]['icon'] as IconData)],
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 33,
                    ),
                itemCount: categories.length),
          )
        ],
      ),
    );
  }
}
