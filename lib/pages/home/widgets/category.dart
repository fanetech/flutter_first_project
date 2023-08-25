import 'package:first_app/pages/home/widgets/newest.dart';
import 'package:first_app/pages/home/widgets/popular.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: categories[index]['color'] as Color,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            categories[index]['icon'] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          categories[index]['title'] as String,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 33,
                    ),
                itemCount: categories.length),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Poplar game',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              'Newest game',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          NewestGame()
        ],
      ),
    );
  }
}
