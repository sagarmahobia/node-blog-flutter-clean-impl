import 'package:clean_blog_flutter/article/data/models/article_list_model.dart';
import 'package:clean_blog_flutter/article/domain/entities/article_entity.dart';
import 'package:clean_blog_flutter/the_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class ThePostItem extends StatelessWidget {
  final ArticleEntity sliderItem;

  const ThePostItem({super.key, required this.sliderItem});

  @override
  Widget build(BuildContext context) {
    var art = getImageUrl(
      sliderItem.images?.first ?? '',
    );

    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeInImage.memoryNetwork(
                image:
                    "https://images.unsplash.com/photo-1626593261859-4fe4865d8cb1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8MTYlM0E5fGVufDB8fDB8fHww&w=1000&q=80",
                placeholder: kTransparentImage,
                width: 100 * 1.2,
                height: 100,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
                imageErrorBuilder: (_, __, ___) => Container(
                  color: Colors.blueGrey.shade50,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sliderItem.title ?? '',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueGrey.shade900,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      //theCategory
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey,
                        ),
                        child: Text(
                          sliderItem.category?.name ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blueGrey.shade200,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            getPrettyDate(sliderItem.createdAt),
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
