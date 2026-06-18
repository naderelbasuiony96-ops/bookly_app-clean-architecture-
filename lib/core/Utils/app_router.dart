import 'package:bookly_clean_architecture_app/feature/home/presentation/view/home_view.dart';
import 'package:bookly_clean_architecture_app/feature/home/presentation/view/widget/book_details_list_view.dart';
import 'package:bookly_clean_architecture_app/feature/search/presentation/view/search_view.dart';
import 'package:bookly_clean_architecture_app/feature/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsListView(),
      ),
    ],
  );
}
