import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  var armor_titan = ArmorTitan();
  armor_titan.setPowerPoint(10);
  print("Armor titan power point: ${armor_titan.getPowerPoint()}");
  print("Aksi armor titan: ${armor_titan.terjang()}");

  print("");

  var attack_titan = AttackTitan();
  attack_titan.setPowerPoint(2);
  print("Attack titan power point: ${attack_titan.getPowerPoint()}");
  print("Aksi attack titan: ${attack_titan.punch()}");

  print("");

  var beast_titan = BeastTitan();
  beast_titan.setPowerPoint(12);
  print("Beast titan power point: ${beast_titan.getPowerPoint()}");
  print("Aksi beast titan: ${beast_titan.lempar()}");

  print("");

  var human = Human();
  human.setPowerPoint(4);
  print("Human power point: ${human.getPowerPoint()}");
  print("Aksi human: ${human.killAlltitan()}");
}
