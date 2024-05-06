import 'package:food_recipe/core/domain/entities/drink.dart';
import 'package:food_recipe/core/domain/entities/food.dart';

class FoodHomeEntity {
  List<Food> foodSuggestion = [];

  List<Food> latesFood = [];

  List<Drink> drink = [
    Drink()
      ..name = "Teh Manis"
      ..image =
          "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/akuratco/images/akurat_20181029123557_B6tXpj.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Es Jeruk"
      ..image =
          "https://doktersehat.com/wp-content/uploads/2018/09/jus-jeruk.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Es Kelapa Muda"
      ..image =
          "https://img.okezone.com/content/2019/02/18/320/2019457/segarnya-bisnis-es-kelapa-muda-berapa-modalnya-nnt169Ab0k.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Mojito Strawberry"
      ..image =
          "https://food-images.files.bbci.co.uk/food/recipes/strawberry_mojito_65484_16x9.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Lemon Squash"
      ..image =
          "https://cdn0-production-images-kly.akamaized.net/oRxRzLZOG-j6Ib-xelFYgl34VDA=/0x1954:3999x4208/469x260/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4221008/original/078296300_1668044646-svitlana-hclUIrSWwFE-unsplash.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Strawberry Milkshake"
      ..image =
          "https://cdn0-production-images-kly.akamaized.net/NF-KflHMqGEGs15XhVbBUagRMaE=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2222139/original/062324200_1526928631-Strawberry-milkshake-esutta.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Strawberry Smothie"
      ..image =
          "https://asset-2.tstatic.net/style/foto/bank/images/strawberry-smoothies_20170623_212658.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Latte Coffee"
      ..image =
          "https://d1r9hss9q19p18.cloudfront.net/uploads/2015/07/shutterstock_223511062.jpg"
      ..author = "York Recipe",
    Drink()
      ..name = "Black Coffee"
      ..image =
          "https://www.livofy.com/health/wp-content/uploads/2020/05/black-coffee.jpg"
      ..author = "York Recipe",
  ];
}
