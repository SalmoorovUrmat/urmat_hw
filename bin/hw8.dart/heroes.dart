import 'game_character.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;
  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);

  @override
  String toString() {
    return '${this.runtimeType} ${super.toString()}';
  }
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    int coeff = RpgGame.random.nextInt(3) + 2; // 2, 3, 4
    int criticalDamage = damage * coeff;
    boss.health -= criticalDamage;
    print('Warrior $name hits critically for $criticalDamage');
  }
}

class Magic extends Hero {
  int bonus;
  Magic(String name, int health, int damage, this.bonus)
    : super(name, health, damage, SuperAbility.boost);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (RpgGame.roundNumber <= 4) {
        hero.damage += bonus;
      }
    }
  }
}

class Medic extends Hero {
  int healPoints;
  Medic(String name, int health, int damage, this.healPoints)
    : super(name, health, damage, SuperAbility.heal);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.health > 0 && hero != this) {
        // hero != this to not heal self
        hero.health += healPoints;
      }
    }
  }
}

class Barsek extends Hero {
  int blockedDamage = 0;
  Barsek(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name reverted $blockedDamage damage back to Boss');
  }
}

class Golem extends Hero {
  Golem(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.takeDamag);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {}
}

class Lucky extends Hero {
  Lucky(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.luck);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextInt(100) > 25) {
      health -= boss.damage;
    } else {
      print('Лаки не получил урон');
    }
  }
}

class Witcher extends Hero {
  Witcher(String name, int health, int damage)
    : super(name, health, 0, SuperAbility.sacrifice);
  bool sacrifice = false;
  Hero? deadherotosave;
  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (isAlive() && !sacrifice) {
      for (var hero in heroes) {
        if (!hero.isAlive() && hero != this) {
          deadherotosave = hero;

          hero.health = this.health;
          this.health = 0;
          sacrifice = true;
          print("витчер пожертовал с собой");

          break;
        }
      }
    }
  }
}

class Thor extends Hero {
  Thor(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.isStunned);

  @override
  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.random.nextInt(100) < 50) {
      boss.isStunned = true;
    }
  }
}
