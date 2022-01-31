part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<AuthorModel> results;
  final Status status;
  final String? errorMessage;
}
