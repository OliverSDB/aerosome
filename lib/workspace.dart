import 'dart:io';

void go(String i) async {
  await Process.run('aerospace', ["workspace", i]);
}

void move(String i) async {
  await Process.run('aerospace', ["move-node-to-workspace", i]);
}
