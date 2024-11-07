import 'package:flutter/material.dart';

import '../../../../configurations/configurations.dart';
import '../notebook_grid_view.dart';

@RoutePage()
class SelectNotebookPage extends StatelessWidget {
  const SelectNotebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                      onTap: () {
                        Navigator.pop(context);
                    },),
                    const SizedBox(
                      width: kPadding * 2,
                    ),
                    const Text(
                      'Selected Notebooks',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.sort_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: NotebookGridView(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'done',
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kPadding * 6),
          ),
          backgroundColor: theme.onPrimary,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.check_rounded,color: theme.primary,),),
      ),
    );
  }
}
