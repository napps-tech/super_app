import 'base.dart';

class CreateCmd extends CmdBase {
  @override
  void execute(List<String> args) {
    print('create ${args.join(' ')}');
  }
}
