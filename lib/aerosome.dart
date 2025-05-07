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
  int space = int.parse(i);

  await mon.get().then((m) {
    return id = (space + ((m - 1) * 10)).toString();
  });

  return id;
}
