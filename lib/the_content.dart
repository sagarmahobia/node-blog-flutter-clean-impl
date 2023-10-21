
import 'package:equatable/equatable.dart';

const String imageUrl ="https://sagar-blog-bucket.s3.ap-south-1.amazonaws.com/";


getImageUrl(String file,  ){
  return imageUrl + file ;
}

//DD/MM/YYYY

String getPrettyDate(DateTime? date){
  if(date == null){
    return '';
  }
  return "${date.day}/${date.month}/${date.year}";
}
// class ResponseModel<T> extends Equatable{
//   final String? error;
//   final T? data;
//
//   const ResponseModel({this.error, this.data});
//
//   bool isLoaded() => data != null;
//
//   bool hasError() => error != null;
//
//   bool isLoading() => data == null && error == null;
//
//   // @override
//   // bool operator ==(Object other) =>
//   //     identical(this, other) ||
//   //         other is ResponseModel &&
//   //             runtimeType == other.runtimeType &&
//   //             error == other.error &&
//   //             data == other.data;
//   @override
//   bool operator ==(Object other) =>
//       false;
//
//   @override
//   int get hashCode => error.hashCode ^ data.hashCode;
//
//   @override
//   // TODO: implement props
//   List<Object?> get props =>  [error, data];
// }

class SliderItem {
  final String theHeadline;
  final String theArt;
  final String theCategory;
  final String theDescription;
  final String thePublishedDate;

  SliderItem({
    required this.theHeadline,
    required this.theArt,
    required this.theCategory,
    required this.theDescription,
    required this.thePublishedDate,
  });
}

// https://images.unsplash.com/photo-1598908314766-3e3ce9bd2f48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80
//https://images.unsplash.com/photo-1607827448387-a67db1383b59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80
//https://images.unsplash.com/photo-1556888335-23631cd2801a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4106&q=80
//https://images.unsplash.com/photo-1616628188524-65a2deb4f06f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80
//https://images.unsplash.com/photo-1556888335-95371827d5fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3640&q=80

List<SliderItem> listOfSliderItems = [
  SliderItem(
    theHeadline: 'Discover the best food & drinks in London',
    theArt:
        'https://images.unsplash.com/photo-1598908314766-3e3ce9bd2f48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80',
    theCategory: 'Travel',
    theDescription:
        'The food & drinks in London are the best. You can find them here. Enjoy!',
    thePublishedDate: '12/06/2023',
  ),
  SliderItem(
    theHeadline:
        'Find great places to stay, eat, shop, or visit from local experts.',
    theArt:
        'https://images.unsplash.com/photo-1607827448387-a67db1383b59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80',
    theCategory: 'Shopping',
    theDescription:
        'Shopping in London is the best. You can find them here. Enjoy!',
    thePublishedDate: '12/06/2023',
  ),
  SliderItem(
    theHeadline: 'Explore the breathtaking outdoors of the UK.',
    theArt:
        'https://images.unsplash.com/photo-1556888335-23631cd2801a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4106&q=80',
    theCategory: 'Scenery',
    theDescription:
        'See the breathtaking outdoors of the UK. You can find them here. Enjoy!',
    thePublishedDate: '12/06/2023',
  ),
  SliderItem(
    theHeadline: 'Enjoy the best of London’s culture completely free.',
    theArt:
        'https://images.unsplash.com/photo-1616628188524-65a2deb4f06f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=4140&q=80',
    theCategory: 'Category 4',
    theDescription: 'The Description',
    thePublishedDate: 'The Published Date',
  ),
  SliderItem(
    theHeadline: 'Children will love these fun days out in London.',
    theArt:
        'https://images.unsplash.com/photo-1556888335-95371827d5fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3640&q=80',
    theCategory: 'Category 5',
    theDescription: 'The Description',
    thePublishedDate: 'The Published Date',
  ),
];
