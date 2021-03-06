class Space {
  int id;
  String nameSpace;
  String imageUrlSpace;
  String city;
  String country;
  int price;
  int rating;
  String mapUrl;
  String phone;
  List photos;
  int nKitchen;
  int nBedroom;
  int nCupboard;
  String address;

  Space({
    this.id,
    this.nameSpace,
    this.imageUrlSpace,
    this.city,
    this.country,
    this.price,
    this.rating,
    this.mapUrl,
    this.phone,
    this.photos,
    this.nKitchen,
    this.nBedroom,
    this.nCupboard,
    this.address
  });

  Space.fromJson(json){
     id = json['id'];
     nameSpace = json['name'];
     imageUrlSpace = json['image_url'];
     city = json['city'];
     country = json['country'];
     price = json['price'];
     rating = json['rating'];
     mapUrl = json['map_url'];
     phone = json['phone'];
     photos = json['photos'];
     address = json['address'];
     nKitchen = json['number_of_kitchens'];
     nBedroom = json['number_of_bedrooms'];
     nCupboard = json['number_of_cupboards'];
  }
}