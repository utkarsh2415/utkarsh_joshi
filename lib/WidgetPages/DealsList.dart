class Deals{
  String image;
  String itemName;
  String goesHere;
  String price;

  Deals(this.image,this.itemName,this.goesHere,this.price);
}

List<Deals> getDeals(){
  return [
    Deals("Assets/images/lily.png","Water lily","Goes to","Rs. 99"),
    Deals("Assets/images/lily.png","Water lily","Goes to","Rs. 199"),
    Deals("Assets/images/lily.png","water lily","Goes to","Rs. 79"),
    Deals("Assets/images/lily.png","Water lily","Goes to","Rs. 199"),
    Deals("Assets/images/lily.png","water lily","Goes to","Rs. 79"),
  ];
}

class trending{
  String image;
  String item;
  String goesHere;
  String price;

  trending(this.image,this.item,this.goesHere,this.price);
}

List<trending> getTrends(){
  return[
    trending('Assets/images/lily.png','Water lily','Goes here','Rs. 20'),
    trending('Assets/images/lily.png', 'Water lily', 'Goes to', 'Rs. 59'),
    trending('Assets/images/lily.png','Water lily','Goes here','Rs. 20'),
    trending('Assets/images/lily.png', 'Water lily', 'Goes to', 'Rs. 59'),
    trending('Assets/images/lily.png','Water lily','Goes here','Rs. 20'),
    trending('Assets/images/lily.png', 'Water lily', 'Goes to', 'Rs. 59'),
];
}
