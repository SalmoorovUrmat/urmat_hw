abstract class GameCharacter {
  String name;
  int _health;
  int damage;

  GameCharacter(this.name, this._health, this.damage);

  int get health => _health;
  set health(int value) {
    if (value < 0) {
      _health = 0;
    } else {
      _health = value;
    }
  }

  @override
  String toString() {
    return '$name: Health = $health, Damage = $damage';
  }
bool isAlive () {
  return _health > 0;
}

}

enum SuperAbility { heal, boost, blockRevert, criticalDamage, sacrifice, isStunned, luck, takeDamag, luckymen }
