import 'package:email_app/di/get_it.dart';
import 'package:email_app/presentation/cubit/get_user_list_cubit/get_user_list_cubit.dart';
import 'package:email_app/presentation/router_page/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailApp extends StatefulWidget {
  const EmailApp({Key? key}) : super(key: key);

  @override
  State<EmailApp> createState() => _EmailAppState();
}

class _EmailAppState extends State<EmailApp> {
  late GetUserListCubit getUserListCubit;
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    getUserListCubit = getInstance<GetUserListCubit>();
  }

  @override
  void dispose() {
    getUserListCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetUserListCubit>.value(value: getUserListCubit),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
