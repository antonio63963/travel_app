import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/features/presentation/pages/my_trips_screen.dart';

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _pageController.addListener(() => _currentPage.value = _pageController.page!.round());
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 120,
        title: const Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Hi Fabrice 👍', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text('Are you Travaling today?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ]),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          MyTripsScreen(),
          Text(
            '2',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            '3',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, pageIndex, child) {
            return BottomNavigationBar(
              currentIndex: pageIndex,
              items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "My Trips"),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add Trip"),
              BottomNavigationBarItem(icon: Icon(Icons.map), label: "Maps"),
            ], onTap: (index) {
              _pageController.jumpToPage(index);
            });
          }),
    );
  }
}
