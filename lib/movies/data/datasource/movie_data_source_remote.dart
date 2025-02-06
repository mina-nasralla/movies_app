import 'package:dio/dio.dart';
import 'package:untitled2/Core/Error/exceptions.dart';
import 'package:untitled2/Core/Network/Error/error_message.dart';
import 'package:untitled2/Core/utils/app_const.dart';
import 'package:untitled2/movies/data/models/movie_model.dart';

abstract class BaseMovieDataSource {
  Future<List<MovieModel>> getNowPlaying();

  Future<List<MovieModel>> getPopular();

  Future<List<MovieModel>> getTopRated();
}

class MovieDataSource extends BaseMovieDataSource {
  @override // This is the implementation of the abstract method from BaseMovieDataSource.
  // It makes a GET request to the nowPlaying API endpoint using the Dio library.
  Future<List<MovieModel>> getNowPlaying() async {
    final response = await Dio().get(AppConst.nowPlaying);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorMessage: ErrorMessage.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopular() async {
    final response = await Dio().get(AppConst.nowPlaying);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorMessage: ErrorMessage.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRated() async {
    final response = await Dio().get(AppConst.topRated);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(errorMessage: ErrorMessage.fromJson(response.data));
    }
  }
}
