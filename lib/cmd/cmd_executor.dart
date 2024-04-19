import 'base.dart';
import 'create.dart';

class CmdExecutor {
  static Map<String, CmdBase Function()> commands = {
    'create': () => CreateCmd(),
  };

  static void execute(List<String> args) {
    if (args.isEmpty) {
      print("Command not found");
      return;
    }
    var commandConstructor = commands[args[0]];
    if (commandConstructor != null) {
      var commandInstance = commandConstructor();
      commandInstance.execute(args);
    } else {
      print("Command not found");
    }
  }
}
