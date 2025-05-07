import 'dart:io';

Future<int> get() async {
  int i = 0;

  await Process.run('aerospace', ["list-monitors", "--mouse", "--format", "%{monitor-id}"])
      .then((x) {
        i = int.parse(x.stdout);
        return i;
      })
      .onError((error, stackTrace) {
        print("Error:");
        print(error);
        print("Stacktrace:");
        print(stackTrace);
        return i = 0;
      });

  return i;
}
