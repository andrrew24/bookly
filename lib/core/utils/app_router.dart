import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/core/data/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly/features/search/presentaion/manager/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentaion/views/search_view.dart';
import 'package:bookly/features/splash/presentaion/views/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/cart/manager/views/cart_view.dart';
import '../../features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static const kCartView = "/cartView";

  static final router = GoRouter(
    routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (context, GoRouterState state) {
            return const SplashView();
          },
        ),
      GoRoute(
        path: kCartView,
        builder: (context, GoRouterState state) {
          return const CartView();
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
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SearchCubit(getIt.get<SearchRepoImp>()),
            child: const SearchView(),
          );
        },
      ),
    ],
  );
}
