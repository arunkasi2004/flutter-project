import 'package:flutter_bloc/flutter_bloc.dart';
import 'images_event.dart';
import 'images_state.dart';
import '../../services/image_service.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final ImageService _imageService;

  ImagesBloc(this._imageService) : super(ImagesInitial()) {
    on<LoadImages>(_onLoadImages);
  }

  Future<void> _onLoadImages(LoadImages event, Emitter<ImagesState> emit) async {
    emit(ImagesLoading());
    try {
      final images = await _imageService.getImages();
      emit(ImagesLoaded(images));
    } catch (e) {
      emit(ImagesError(e.toString()));
    }
  }
}