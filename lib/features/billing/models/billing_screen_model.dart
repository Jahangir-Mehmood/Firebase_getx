final shopsList = [
  {
    "id": "009876",
    "name": "Taha Nimco & Bakers",
    "address": "North Karachi",
  },
  {
    "id": "001234",
    "name": "Al Madina Store",
    "address": "Buffer Zone",
  },
  {
    "id": "004567",
    "name": "Rizwan General Store",
    "address": "New Karachi",
  },
  {
    "id": "003210",
    "name": "Al Faheem Mango Shop",
    "address": "Gulshan-e-Iqbal",
  },
  {
    "id": "007890",
    "name": "Madni Milk Shop",
    "address": "Johar Mor",
  },
  {
    "id": "006543",
    "name": "Karachi Super Mart",
    "address": "Saddar Town",
  },
];
class ShopModel {
  final String id;
  final String name;
  final String address;

  ShopModel({
    required this.id,
    required this.name,
    required this.address,
  });

  factory ShopModel.fromJson(Map<String, dynamic> json) {
    return ShopModel(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      address: json["address"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "address": address,
    };
  }
}

