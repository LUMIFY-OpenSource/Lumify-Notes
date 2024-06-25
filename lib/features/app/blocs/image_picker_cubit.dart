import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'image_picker_cubit.freezed.dart';
part 'image_picker_cubit.g.dart';

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState({
    String? pickedImagePath,
  }) = _ImagePickerState;

  factory ImagePickerState.fromJson(Map<String, dynamic> json) => _$ImagePickerStateFromJson(json);
}

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(const ImagePickerState());

  Future<void> pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      emit(state.copyWith(pickedImagePath: pickedImage.path));
    }
  }

  void removeImage() {
    emit(state.copyWith(pickedImagePath: null));
  }
}
