class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;

  Clothes(
      {this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl});

  static List<Clothes> generateClothes() {
    return [
      Clothes(
          title: 'Turtle Neck',
          subtitle: 'Hoodie',
          price: '\$89.34',
          imageUrl: 'assets/images/arrival1.jpg',
          detailUrl: ['assets/images/arrival','assets/images/detail2']
      ),
      Clothes(
          title: '  Louis Vuitton',
          subtitle: 'Dark Shades',
          price: '\$59.34',
          imageUrl: 'assets/images/arrival2.jpg',
          detailUrl: ['assets/images/arrival2','assets/images/detail3']
      )
    ];
  }
}
