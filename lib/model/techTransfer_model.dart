// To parse this JSON data, do
//
//     final techTransferModel = techTransferModelFromJson(jsonString);

import 'dart:convert';

TechTransferModel techTransferModelFromJson(String str) =>
    TechTransferModel.fromJson(json.decode(str));

String techTransferModelToJson(TechTransferModel data) =>
    json.encode(data.toJson());

class TechTransferModel {
  TechTransferModel({
    required this.results,
    required this.count,
    required this.total,
    required this.perpage,
    required this.page,
  });

  List<List<dynamic>> results;
  int count;
  int total;
  int perpage;
  int page;

  factory TechTransferModel.fromJson(Map<String, dynamic> json) =>
      TechTransferModel(
        results: List<List<dynamic>>.from(
            json["results"].map((x) => List<dynamic>.from(x.map((x) => x)))),
        count: json["count"],
        total: json["total"],
        perpage: json["perpage"],
        page: json["page"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(
            results.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "count": count,
        "total": total,
        "perpage": perpage,
        "page": page,
      };
}
