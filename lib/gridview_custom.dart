import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Grid View custom',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(244, 13, 84, 131),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/minimal.jpeg'),
                  fit: BoxFit.fitHeight)),
          child: _buildCustomGridView(),
        ),
      ),
    );
  }

  Widget _buildCustomGridView() {
    return GridView.custom(
      scrollDirection: Axis.horizontal,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return _buildGridItem(index);
      }, childCount: 20),
    );
  }

  Widget _buildGridItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/back.jpg'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          '$index',
          style: const TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
