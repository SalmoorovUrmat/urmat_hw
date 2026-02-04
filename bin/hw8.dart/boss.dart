import 'game_character.dart';
import 'rpg_game.dart';
import 'heroes.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;
  bool isStunned = false;
  Boss(super.name, super.health, super.damage);

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    // variants.shuffle();
    // defence = variants.first;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0, 1, 2, 3
    defence = variants[randomIndex];
  }

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.health > 0) {
        if (hero is Barsek) {
          if (hero.isAlive()) {
            int block = (RpgGame.random.nextInt(2) + 1) * 5; // 5 or 10
            hero.blockedDamage = block;
            hero.health -= (damage - block);
          }
        } else if (defence != hero.ability) {
          hero.health -= damage;
        } else if (hero is Golem && hero.ability != defence && hero.isAlive()) {
          int test = damage ~/ 5;
          hero.health -= test;
          hero.health -= damage;
        } else if (hero is Lucky) {
          if (RpgGame.random.nextInt(100) < 25) {
            hero.health += 0;
          }
        } else {
          hero.health -= damage;
        }
      }
      @override
      String toString() {
        return 'BOSS ${super.toString()} Defence = ${defence == null ? "No defence" : defence!.name}';
      }
    }
  }
}
