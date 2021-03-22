class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;

  CardModel(this.user, this.cardNumber, this.cardExpired, this.cardType,
      this.cardBackground, this.cardElementTop, this.cardElementBottom);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['user'],
        item['cardNumber'],
        item['cardExpired'],
        item['cardType'],
        item['cardBackground'],
        item['cardElementTop'],
        item['cardElementBottom'],
      ),
    )
    .toList();

var cardData = [
  {
    "user": "Jiju Thomas",
    "cardNumber": "**** **** **** 1123",
    "cardExpired": "02-02-2043",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFFd99029,
    "cardElementTop": "assets/svg/ellipse_top_blue.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg"
  },
  {
    "user": "Joel",
    "cardNumber": "**** **** **** 1235",
    "cardExpired": "01-01-2075",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFF2972D9,
    "cardElementTop": "assets/svg/ellipse_top_blue.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg"
  }
];
