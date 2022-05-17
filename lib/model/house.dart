class House{
  String name;
  String address;
  String imageUrl;

  House(this.name,this.address,this.imageUrl);

  static List<House>generateForSale(){
return[
  House('The Moon House','P455,Kuwadzana,Harare',
  'assets/images/img_1.png'),
];
  }
}