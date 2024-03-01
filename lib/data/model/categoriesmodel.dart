class CategoriesModel {
  String? categoriesId;
  String? categoerisName;
  String? categoriesNameAr;
  String? categoriesDate;
  String? categoriesImage;

  CategoriesModel(
      {this.categoriesId,
      this.categoerisName,
      this.categoriesNameAr,
      this.categoriesDate,
      this.categoriesImage});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoriesId = json['categories_id'];
    categoerisName = json['categoeris_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesDate = json['categories_date'];
    categoriesImage = json['categories_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories_id'] = this.categoriesId;
    data['categoeris_name'] = this.categoerisName;
    data['categories_name_ar'] = this.categoriesNameAr;
    data['categories_date'] = this.categoriesDate;
    data['categories_image'] = this.categoriesImage;
    return data;
  }
}
