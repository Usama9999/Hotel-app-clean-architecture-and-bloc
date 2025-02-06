part of 'hotel_bloc.dart';

abstract class ArticlesEvent {
  const ArticlesEvent();
}

// On Fetching Articles Event
class OnGettingArticlesEvent extends ArticlesEvent {
  final bool withLoading;

  OnGettingArticlesEvent({this.withLoading = true});
}

// On Searching Articles Event
class OnSearchingArticlesEvent extends ArticlesEvent {
  final String text;

  OnSearchingArticlesEvent(
    this.text,
  );
}
