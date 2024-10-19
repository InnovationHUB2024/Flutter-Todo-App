/*
TO DO PAGE: responsible for providing the cubit to the view (UI)

-use BlocProvider

*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/domain/repository/todo.repo.dart';
import 'package:todo_app/presentation/todo_cubit.dart';
import 'package:todo_app/presentation/todo_view.dart';

class TodoPage extends StatelessWidget {
  final TodoRepo todoRepo;

  const TodoPage({super.key, required this.todoRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(todoRepo),
      child: const TodoView(),
    );
  }
}