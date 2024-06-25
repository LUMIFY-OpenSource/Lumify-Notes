import 'package:lumify_notes/features/app/blocs/image_picker_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AppImagePicker extends StatelessWidget {
  const AppImagePicker({
    super.key,
    required this.onImageChanged,
    required this.widgetBuilder,
  });

  final Function(String? path) onImageChanged;
  final Function(String? path) widgetBuilder;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ImagePickerCubit(),
        child: Builder(
            builder: (context) => BlocConsumer<ImagePickerCubit, ImagePickerState>(
                  listener: (context, state) {
                    if (state.pickedImagePath != null) {
                      onImageChanged(state.pickedImagePath);
                    }
                  },
                  builder: (context, state) => Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<ImagePickerCubit>().pickImage(ImageSource.gallery);
                        },
                        child: widgetBuilder(state.pickedImagePath),
                      ),
                      if (state.pickedImagePath != null)
                        IconButton(
                          onPressed: () {
                            context.read<ImagePickerCubit>().removeImage();
                          },
                          icon: const Icon(
                            Icons.cancel,
                          ),
                        ),
                    ],
                  ),
                )),
      );
}
