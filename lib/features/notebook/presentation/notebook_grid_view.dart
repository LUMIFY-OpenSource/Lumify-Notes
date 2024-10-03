import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumify_notes/configurations/configurations.dart';
import 'package:lumify_notes/features/notebook/blocs/notebook_cubit.dart';
import 'package:lumify_notes/features/notebook/presentation/single_notebook_card.dart';
class NotebookGridView extends StatelessWidget {
  const NotebookGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotebookCubit, NotebookState>(
      builder: (context, state) {
        final notebooks = state.notebooks;
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: kPadding * 0.11,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          itemCount: notebooks.length,
          itemBuilder: (context, index) {
            return SingleNotebookCard(
              notebook: notebooks[index],
            );
          },
        );
      }
    );
  }
}
