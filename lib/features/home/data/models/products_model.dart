class ProductsModel {
   late final String image;
   late final String description;
   late final String title;
   late final String category;
     var price;
    late  int count;

  ProductsModel.fromJson(Map<String, dynamic> json) {
      image=json['image'];
      description=json['description'];
      title=json['title'];
      category=json['category'];
      price=json['price'];
      count=1;
  }

}
