import 'package:flutter/material.dart';
import 'package:stem_ui/constant/strings.dart';
import 'package:stem_ui/widgets/custom_textfield.dart';
import 'widgets/category_chip.dart';
import 'widgets/lesson_item.dart';
import 'widgets/lessons_app_bar.dart';

class LessonsScreen extends StatefulWidget {
  const LessonsScreen({super.key});

  @override
  State<LessonsScreen> createState() => _LessonsScreenState();
}

class _LessonsScreenState extends State<LessonsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LessonsAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchField(controller: _searchController),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                children: const [
                  CategoryChip(label: 'Subjects'),
                  CategoryChip(label: 'History'),
                  CategoryChip(label: 'Science'),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                AppStrings.currentLessons,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              LessonItem(
                id: 'Subjects',
                title: 'Basic Subjects',
                subtitle: 'Lesson 1',
                imageUrl: 'assets/images/1.png',
              ),
              LessonItem(
                id: 'History',
                title: 'Islamic History',
                subtitle: 'Lesson 2',
                imageUrl: 'assets/images/2.png',
              ),
              const SizedBox(height: 20),
              const Text(
                AppStrings.pastLessons,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              LessonItem(
                id: 'Science',
                title: 'Natural Sciences',
                subtitle: 'Lesson 3',
                imageUrl: 'assets/images/3.png',
              ),
            ],
          ),
        ),
      ),
bottomNavigationBar: SizedBox(
  height: 70, // Adjust this value to make it taller
  child: BottomNavigationBar(
    currentIndex: 1,
    selectedItemColor: Colors.black,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/home.png', color: Colors.grey),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/lessons.png', color: Colors.black),
        label: 'Lessons',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/images/calender.png', color: Colors.grey),
        label: 'Calendar',
      ),
    ],
  ),
),
    );
  }
}