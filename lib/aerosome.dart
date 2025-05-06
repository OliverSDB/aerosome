import 'package:aerosome/workspace.dart' as ws;
import 'package:aerosome/monitor.dart' as mon;

void goToWs(String i) async {
  print(await _getWorkspaceId(i));

  ws.go(await _getWorkspaceId(i));
}

void moveToWs(String i) async {
  print(await _getWorkspaceId(i));
  ws.move(await _getWorkspaceId(i));
}

Future<String> _getWorkspaceId(String i) async {
  String id = '0';
  await mon.get().then((m) {
    int monitor = m - 1;
    if (monitor == 0) {
      return id = i;
    }
    return id = "$monitor$i";
  });
  return id;
}
