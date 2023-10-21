//
// import 'package:flutter/cupertino.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TheHeadLineSlider extends StatefulWidget {
//   const TheHeadLineSlider({super.key});
//
//   @override
//   State<TheHeadLineSlider> createState() => _TheHeadLineSliderState();
// }
//
// class _TheHeadLineSliderState extends State<TheHeadLineSlider> {
//   int _index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         //text Most Recommended
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           child: Text(
//             'Most Recommended',
//             style: GoogleFonts.poppins(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: CupertinoColors.systemTeal,
//             ),
//           ),
//         ),
//         CupertinoButton(
//           onPressed: (){
//             Navigator.push(context, CupertinoPageRoute(builder: (context) => BlogDetailPage(
//               sliderItem: listOfSliderItems[_index],
//             )));
//           },
//           child: SizedBox(
//             height: 280,
//             child: PageView.builder(
//               itemCount: listOfSliderItems.length,
//               controller: PageController(
//                 viewportFraction: .9,
//                 keepPage: true,
//               ),
//               onPageChanged: (int index) => setState(() => _index = index),
//               itemBuilder: (_, i) {
//                 var sliderItem = listOfSliderItems[i];
//                 return Stack(
//                   children: [
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(32),
//                             child: FadeInImage.memoryNetwork(
//                               image: sliderItem.theArt,
//                               placeholder: kTransparentImage,
//                               fit: BoxFit.cover,
//                               height: 250,
//                               fadeInDuration: const Duration(milliseconds: 300),
//                               imageErrorBuilder: (_, __, ___) => Container(
//                                 height: 250,
//                                 color: CupertinoColors.systemGrey5,
//                                 child: const Center(
//                                   child: Padding(
//                                     padding: EdgeInsets.only(bottom: 82.0),
//                                     child: Icon(
//                                       CupertinoIcons.clear_circled,
//                                       color: CupertinoColors.systemGrey,
//                                       size: 50,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               width: double.infinity,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       left: 0,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width * .82,
//                         padding: const EdgeInsets.all(16),
//                         margin: const EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(32),
//                           color: CupertinoColors.white,
//                           boxShadow: [
//                             BoxShadow(
//                               color: CupertinoColors.systemGrey5,
//                               offset: const Offset(0, 2),
//                               blurRadius: 3,
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(4),
//                                     color:  CupertinoColors.systemTeal,
//                                   ),
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 8,
//                                     vertical: 4,
//                                   ),
//                                   child: Text(
//                                     sliderItem.theCategory,
//                                     style: GoogleFonts.poppins(
//                                       color:  CupertinoColors.white,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   sliderItem.thePublishedDate,
//                                   style: GoogleFonts.poppins(
//                                     color:  CupertinoColors.systemGrey,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.normal,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Text(
//                               sliderItem.theHeadline,
//                               style: GoogleFonts.poppins(
//                                 color:  CupertinoColors.systemTeal,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             Text(
//                               sliderItem.theDescription,
//                               style: GoogleFonts.poppins(
//                                 color:  CupertinoColors.systemGrey,
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
