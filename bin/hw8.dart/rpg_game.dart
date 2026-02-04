import 'dart:math';
import 'boss.dart';
import 'heroes.dart';

class RpgGame {
  static final Random random = Random();
  static int roundNumber = 0;

  static void startGame() {
    Boss boss = Boss('Alexey', 2000,100);
    Warrior warrior1 = Warrior('Conan', 290, 5);
    Warrior warrior2 = Warrior('Arthur', 280, 5);
    Magic magic = Magic('Merlin', 270, 20, 5);
    Medic doc = Medic('Aibolit', 250, 5, 5);
    Medic assistant = Medic('Hasiya', 300, 5, 5);
    Barsek berserk = Barsek ('Guts', 250, 5);
    Golem golem = Golem ( " Supermen", 450, 5);
    Lucky lucky = Lucky ('Betmen', 300,20,);
    Witcher witcher = Witcher (" voskreshnik", 200, 0);
    Thor thor = Thor('tor', 200, 5);

    List<Hero> heroes = [warrior1, warrior2, magic, doc, assistant, berserk, golem, lucky,
    witcher, thor];
    _printStatistics(boss, heroes);
    while (!_isGameOver(boss, heroes)) {
      _playRound(boss, heroes);
    }
  }

  static bool _isGameOver(Boss boss, List<Hero> heroes) {
    if (boss.health <= 0) {
      print('Heroes won!!!');
      return true;
    }
    bool allHeroesDead = true;
    for (var hero in heroes) {
      if (hero.health > 0) {
        allHeroesDead = false;
        break;
      }
    }
    if (allHeroesDead) {
      print('Boss won!!!');
      return true;
    }
    return false;
  }

  static void _playRound(Boss boss, List<Hero> heroes) {
    roundNumber++;
    boss.chooseDefence();

    if (boss.isStunned == true){
      print('босс пропустил раунд');
    } else {
    boss.attack(heroes);
    }

    for (var hero in heroes) {
      if(hero.health <= 0 || boss.health <= 0 || hero.ability == boss.defence) {
        continue;
      }
      hero.attack(boss);
      hero.applySuperPower(boss, heroes);
    }
    _printStatistics(boss, heroes);
  }

  static void _printStatistics(Boss boss, List<Hero> heroes) {
    print('ROUND $roundNumber ----------------');
    print(boss);
    for (var hero in heroes) {
      print(hero);
    }
  }
}
