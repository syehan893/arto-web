import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ta_smt4/repositories/user_repository.dart';

import '../../../../models/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository? userRepository;

  UserBloc({this.userRepository}) : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is FetchUserEvent) {
      yield UserLoading();

      try {
        final user = await userRepository?.getUser();
        user?.fold((l) => null, (r) async* {
          yield UserLoaded(r);
        });
      } catch (e) {
        yield UserError('Failed to fetch user data.');
      }
    }
  }
}
