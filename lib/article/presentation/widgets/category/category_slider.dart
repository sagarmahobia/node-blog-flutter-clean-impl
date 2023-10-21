import 'package:clean_blog_flutter/article/presentation/manager/articles/articles_bloc.dart';
import 'package:clean_blog_flutter/article/presentation/manager/categories/categories_bloc.dart';
import 'package:clean_blog_flutter/di/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySlider extends StatefulWidget {
  final String? categoryId;

  const CategorySlider({super.key, this.categoryId});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      child: BlocProvider(
        create: (context) => getIt<CategoriesBloc>()
          ..add(
            LoadCategoriesEvent(),
          ),
        child: BlocBuilder<CategoriesBloc, CategoriesState>(
          builder: (context, state) {
            if (state is CategoriesLoaded) {
              return Row(
                children: state.categories
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          //todo
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blueGrey,
                          ),
                          child: Text(
                            e.name ?? '',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            } else if (state is CategoriesError) {
              return Center(
                child: Text(state.message),
              );
            }
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          },
        ),
      ),
    );
  }
}
