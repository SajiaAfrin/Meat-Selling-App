class Meat {
  final int meatId;
  final int price;
  final String size;
  final double rating;
  final int weight;
  final String type;
  final String category;
  final String name;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Meat(
      {required this.meatId,
        required this.price,
        required this.category,
        required this.name,
        required this.size,
        required this.rating,
        required this.weight,
        required this.type,
        required this.imageURL,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  static List<Meat> meatList = [
    Meat(
        meatId: 0,
        price: 22,
        category: 'Beef',
        name: '1kg',
        size: 'Small',
        rating: 4.5,
        weight: 34,
        type: 'sdfdfdf',
        imageURL: 'assets/images/meat.png',
        isFavorated: true,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 1,
        price: 11,
        category: 'Meat',
        name: '1kg',
        size: 'Medium',
        rating: 4.8,
        weight: 56,
        type: '19 - 22',
        imageURL: 'assets/images/meat1.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 2,
        price: 18,
        category: 'Meat',
        name: '1kg',
        size: 'Large',
        rating: 4.7,
        weight: 34,
        type: '22 - 25',
        imageURL: 'assets/images/meat2.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 3,
        price: 30,
        category: 'Meat',
        name: '1kg',
        size: 'Small',
        rating: 4.5,
        weight: 35,
        type: '23 - 28',
        imageURL: 'assets/images/meat.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 4,
        price: 24,
        category: 'Meat',
        name: '1kg',
        size: 'Large',
        rating: 4.1,
        weight: 66,
        type: '12 - 16',
        imageURL: 'assets/images/meat1.png',
        isFavorated: true,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 5,
        price: 24,
        category: 'Meat',
        name: '1kg',
        size: 'Medium',
        rating: 4.4,
        weight: 36,
        type: '15 - 18',
        imageURL: 'assets/images/meat1.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 6,
        price: 19,
        category: 'Meat',
        name: '1kg',
        size: 'Small',
        rating: 4.2,
        weight: 46,
        type: '23 - 26',
        imageURL: 'assets/images/meat1.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 7,
        price: 23,
        category: 'Meat',
        name: '1kg',
        size: 'Medium',
        rating: 4.5,
        weight: 34,
        type: '21 - 24',
        imageURL: 'assets/images/meat1.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
    Meat(
        meatId: 8,
        price: 46,
        category: 'Meat',
        name: '3kg',
        size: 'Medium',
        rating: 4.7,
        weight: 46,
        type: '21 - 25',
        imageURL: 'assets/images/meat1.png',
        isFavorated: false,
        decription:
        'afsdgffgstaasdsfdfdgdgdgdfg',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Meat> getFavoritedPlants(){
    List<Meat> _travelList = Meat.meatList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Meat> addedToCartPlants(){
    List<Meat> _selectedPlants = Meat.meatList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}
