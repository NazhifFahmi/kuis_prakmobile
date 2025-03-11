
List<MenuItem> menuItems = [
  MenuItem('Nasi Goreng', 15000),
  MenuItem('Mie Ayam', 12000),
  MenuItem('Sate Ayam', 20000),
  MenuItem('Bakso', 10000),
  MenuItem('Soto Ayam', 13000),
  MenuItem('Gado-Gado', 14000),
];

class MenuItem {
  final String name;
  final int price;

  MenuItem(this.name, this.price);
}