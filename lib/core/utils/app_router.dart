import 'package:go_router/go_router.dart';
import 'package:shoping_app/features/auth/presentations/views/log_in_view.dart';
import 'package:shoping_app/features/auth/presentations/views/register_view.dart';
import 'package:shoping_app/features/home_view/presentations/views/home_view.dart';
import 'package:shoping_app/features/home_view/presentations/views/navigation_bar.dart';
import 'package:shoping_app/features/home_view/presentations/views/widgets/products/product_details_view_body.dart';
import '../../features/home_view/presentations/views/product_details_view.dart';
import '../../features/home_view/presentations/views/widgets/categories/category_details_view_body.dart';
import '../../features/onboardingscreen/presentations/views/boarding_view.dart';

abstract class AppRouter {
  static const kRegister = '/register';
  static const kLogin = '/login';
  static const kSplashScreen = '/splashScreen';
  static const kHomeView = '/homeView';
  static const kCategoryDetailsView = '/categoryDetailsView';
  static const kNavigationBar = '/navigationBar';
  static const kProductDetailsView = '/ProductDetailsViewBody';

  static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const BoardingView()
        ),
        GoRoute(
            path:kLogin,
            builder: (context, state) => const LogInScreen()
        ),
        GoRoute(
          path: kRegister,
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView()
        ),
        GoRoute(
            path: kNavigationBar,
            builder: (context, state) => const NavigationBar()
        ),
        GoRoute(
          path: kCategoryDetailsView,
          builder: (context, state) {
            // Retrieve the `extra` parameter from the route state
            final category = state.extra as String?;
            return CategoryDetailsViewBody(category: category!);
          },
        ),
        GoRoute(
            path: kProductDetailsView,
            builder: (context, state) => const ProductDetailsView()
        ),

      ]);
}