import 'package:aerosome/aerosome.dart' as aero;

void main(List<String> arguments) {
  if (arguments.first == 'move') {
    aero.moveToWs(arguments[1]);
  }
  if (arguments.first == 'go') {
    aero.goToWs(arguments[1]);
  }
}
