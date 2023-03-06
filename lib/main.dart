import 'dart:async';

import 'package:ca_example/data/services/user_service.dart';
import 'package:ca_example/bloc/bloc_observer/app_bloc_observer.dart';
import 'package:ca_example/bloc/users_bloc/users_bloc.dart';
import 'package:ca_example/get_it.dart';
import 'package:ca_example/resources/theme_manager.dart';
import 'package:ca_example/view/users_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

void main() => runZonedGuarded<void>(
      // обернуто в runZonedGuarded для отлова всех ошибок и последующего их логирования
      () async {
        Bloc.observer = AppBlocObserver.instance();
        Bloc.transformer = bloc_concurrency.sequential<Object?>();
        setupGetIt();
        runApp(MyApp.myApp);
      },
      (error, stack) {},
    );

class MyApp extends StatelessWidget {
  static const MyApp myApp = MyApp._();
  const MyApp._();

  @override
  Widget build(BuildContext context) {
    final UserService userService = GetIt.instance<UserService>();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => UsersBloc(
                    userService: userService,
                  )),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: getApplicationTheme(),
          home: const UsersView(),
        ));
  }
}
