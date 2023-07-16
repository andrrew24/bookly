import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";

  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
