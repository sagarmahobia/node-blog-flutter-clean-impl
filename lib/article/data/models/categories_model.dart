import "package:equatable/equatable.dart";
import 'package:json_annotation/json_annotation.dart';

part 'categories_model.g.dart';

@JsonSerializable()
class CategoryModel extends Equatable {
  const CategoryModel({
    required this.success,
    required this.data,
    required this.message,
  });

  final bool? success;
  final List<Datum>? data;
  final String? message;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  @override
  List<Object?> get props => [
        success,
        data,
        message,
      ];
}

@JsonSerializable()
class Datum extends Equatable {
  const Datum({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  });

  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? id;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  @override
  List<Object?> get props => [
        name,
        createdAt,
        updatedAt,
        id,
      ];
}

/*
{
	"success": true,
	"data": [
		{
			"name": "Travel",
			"createdAt": "2023-08-12T17:13:53.729Z",
			"updatedAt": "2023-08-12T17:13:53.729Z",
			"id": "64d7bdd137478ad8e197f141"
		},
		{
			"name": "Shopping",
			"createdAt": "2023-08-12T17:14:01.490Z",
			"updatedAt": "2023-08-12T17:14:01.490Z",
			"id": "64d7bdd937478ad8e197f143"
		},
		{
			"name": "Food",
			"createdAt": "2023-08-12T17:14:47.385Z",
			"updatedAt": "2023-08-12T17:14:47.385Z",
			"id": "64d7be0737478ad8e197f145"
		},
		{
			"name": "Business",
			"createdAt": "2023-08-12T17:15:48.598Z",
			"updatedAt": "2023-08-12T17:17:00.765Z",
			"id": "64d7be4437478ad8e197f147"
		},
		{
			"name": "Creativity",
			"createdAt": "2023-08-12T17:15:57.943Z",
			"updatedAt": "2023-08-12T17:15:57.943Z",
			"id": "64d7be4d37478ad8e197f149"
		},
		{
			"name": "Innovation",
			"createdAt": "2023-08-12T17:16:07.838Z",
			"updatedAt": "2023-08-12T17:16:07.838Z",
			"id": "64d7be5737478ad8e197f14b"
		}
	],
	"message": "Successfully loaded categories"
}*/
