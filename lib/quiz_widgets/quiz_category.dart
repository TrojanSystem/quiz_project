import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:quiz_project/sub_screens/quiz_selected_category.dart';

class QuizCategory extends StatelessWidget {
  QuizCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    double _h = MediaQuery.of(context).size.height;
    int columnCount = 3;
    List category = [
      {
        'category': 'mathematics.png',
        'title': 'Math',
        'tag': 'Mathematics Quiz'
      },
      {'category': 'chemistry.png', 'title': 'Science', 'tag': 'Science Quiz'},
      {'category': 'theatre-mask.png', 'title': 'Drama', 'tag': 'Drama Quiz'},
      {
        'category': 'paint-palette.png',
        'title': 'Art & Craft',
        'tag': 'Art Quiz'
      },
      {
        'category': 'book (1).png',
        'title': 'Knowledge',
        'tag': 'General Knowledge Quiz'
      },
      {
        'category': 'languages.png',
        'title': 'Languages',
        'tag': 'Languages Quiz'
      }
    ];
    return Expanded(
      flex: 3,
      child: AnimationLimiter(
        child: GridView.count(
          physics: const BouncingScrollPhysics(
              parent: NeverScrollableScrollPhysics()),
          padding: EdgeInsets.all(_w / 60),
          crossAxisCount: columnCount,
          children: List.generate(
            6,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: columnCount,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) => QuizSelectedCategory(
                              selectedQuizTag: category[index]['tag'],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: _w / 30, left: _w / 60, right: _w / 60),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 40,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(children: [
                          Container(
                            width: _w * 0.1,
                            height: _h * 0.1,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    'assets/images/${category[index]['category']}'),
                              ),
                            ),
                          ),
                          Text(category[index]['title']),
                        ]),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
