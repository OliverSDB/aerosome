import 'dart:io';

void main() async {
  var x = await Process.run('aerospace', ["list-monitors", "--focused"]);
  print(x.stdout);
}
