// screens/lesson_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:stem_ui/features/lesson_details/presentation/widget/date_time_details.dart';
import 'package:stem_ui/features/lesson_details/presentation/widget/lesson_action_buttons.dart';

import 'package:stem_ui/constant/strings.dart';

class LessonDetailScreen extends StatelessWidget {
  const LessonDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(AppStrings.lessonDetails),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/lesson_details.png',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'This lesson covers the basics of algebra, including variables, expressions, and equations. Learn how to solve for unknowns and apply algebraic concepts to real-world problems.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Divider(indent: 20, endIndent: 20,),
                const SizedBox(height: 24),
                DateTimeDetails(
                  date: 'October 26, 2024',
                  time: '10:00 AM - 11:00 AM',
                ),
                const SizedBox(height: 24),
                const LessonActionButtons(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon:Image.asset('assets/images/home.png',color: Colors.grey), label: 'Home'),
            BottomNavigationBarItem(icon:Image.asset('assets/images/lessons.png',color: Colors.black), label: 'Lessons'),
            BottomNavigationBarItem(icon:Image.asset('assets/images/progress.png',color: Colors.grey), label: 'Progress'),
            BottomNavigationBarItem(icon:Image.asset('assets/images/profile.png',color: Colors.grey), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}