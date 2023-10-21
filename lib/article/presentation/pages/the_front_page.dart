import 'package:clean_blog_flutter/article/presentation/manager/articles/articles_bloc.dart';
import 'package:clean_blog_flutter/article/presentation/widgets/category/category_slider.dart';
import 'package:clean_blog_flutter/article/presentation/widgets/the_post_item.dart';
import 'package:clean_blog_flutter/article/presentation/widgets/the_search_bar.dart';
import 'package:clean_blog_flutter/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TheFrontPage extends StatefulWidget {
  const TheFrontPage({super.key});

  @override
  State<TheFrontPage> createState() => _TheFrontPageState();
}

class _TheFrontPageState extends State<TheFrontPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: null,
        middle: Text(
          'Bloggy',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.blueGrey.shade800,
          ),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TheSearchBar(),
              SizedBox(
                height: 60,
                child: CategorySlider(
                  key: UniqueKey(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: Text(
                  'Suggestions for you',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.blueGrey.shade800,
                  ),
                ).animate().slide(
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                      begin: const Offset(1, 0),
                      end: const Offset(0, 0),
                    ),
              ),
              BlocProvider(
                create: (context) =>
                    getIt<ArticlesBloc>()..add(LoadArticlesEvent()),
                child: BlocBuilder<ArticlesBloc, ArticlesState>(
                  builder: (context, state) {
                    if (state is ArticlesLoaded) {
                      return Column(
                        children: state.articles
                            .map(
                              (e) => ThePostItem(
                                sliderItem: e,
                              ),
                            )
                            .toList()
                            .animate(
                          interval: 100.ms,
                          delay: 200.ms,

                        )
                            .slide(
                              duration: 200.ms,
                              curve: Curves.easeIn,
                              begin: const Offset(0, 1),
                              end: const Offset(0, 0),
                            ),
                      );
                          // .animate().slide(
                          //   duration: 500.ms,
                          //   curve: Curves.easeIn,
                          //   begin: const Offset(0, 1),
                          // );
                    } else if (state is ArticlesError) {
                      return Center(
                        child: Text(state.message),
                      );
                    }

                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
