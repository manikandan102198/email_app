import 'package:email_app/presentation/cubit/get_user_list_cubit/get_user_list_cubit.dart';
import 'package:email_app/presentation/widgets/inbox_widget.dart';
import 'package:email_app/presentation/widgets/user_email_widget.dart';
import 'package:flutter/material.dart';
import '/presentation/widgets/app_bar_widget.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getUserEmail();
    super.initState();
  }

  void getUserEmail() {
    BlocProvider.of<GetUserListCubit>(context).getUsersEmail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const AppBarWidget(),
          const InboxWidget(),
          Expanded(child: BlocBuilder<GetUserListCubit, GetUserListState>(
            builder: (context, state) {
              if (state is GetUserListLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is GetUserListFailure) {
                return Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () => getUserEmail(),
                    child: Text(
                      '${state.appErrorType}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                );
              }
              if (state is GetUserListSuccess) {
                return UserEmailWidget(
                  title: state.emailEntity!.title,
                  content: state.emailEntity!.body,
                );
              }
              return Container();
            },
          ))
        ],
      )),
    );
  }
}
