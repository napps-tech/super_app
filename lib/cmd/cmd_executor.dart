import 'base.dart';
import 'create.dart';

class CmdExecutor {
  static Map<String, CmdBase Function()> commands = {
    'create': () => CreateCmd(),
  };

  static void execute(String cmd, List<String> args) {
    var commandConstructor = commands[cmd];
    if (commandConstructor != null) {
      var commandInstance = commandConstructor();
      commandInstance.execute(args);
    } else {
      print("Command not found");
    }
  }
}
