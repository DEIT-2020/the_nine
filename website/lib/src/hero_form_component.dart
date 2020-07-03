import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';

const List<String> _powers = [
  '幼儿园中班',
  '幼儿园大班',
  '一年级',
  '二年级'
];

@Component(
  selector: 'hero-form',
  templateUrl: 'hero_form_component.html',
  directives: [coreDirectives, formDirectives],
)
class HeroFormComponent {
  Hero model = Hero(18, '这里填写账号', _powers[0], '这里填写密码');
  bool submitted = false;

  List<String> get powers => _powers;

  void onSubmit() => submitted = true;

  /// Returns a map of CSS class names representing the state of [control].
  Map<String, bool> setCssValidityClass(NgControl control) {
    final validityClass = control.valid == true ? 'is-valid' : 'is-invalid';
    return {validityClass: true};
  }

  void clear() {
    model.name = '';
    model.power = _powers[0];
    model.alterEgo = '';
  }

  void openIndex(){
    
  }
}

Hero skyDog() {
  var myHero =
      Hero(42, 'SkyDog', 'Fetch any object at any distance', 'Leslie Rollover');
  print('My hero is ${myHero.name}.'); // "My hero is SkyDog."
  return myHero;
}
