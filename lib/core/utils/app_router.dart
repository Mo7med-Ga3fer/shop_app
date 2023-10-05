import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_app/current_body.dart';
import 'package:shop_app/features/auth/presentaion/views/forgot_password_view.dart';
import 'package:shop_app/features/auth/presentaion/views/login_view.dart';
import 'package:shop_app/features/auth/presentaion/views/sign_up_view.dart';
import 'package:shop_app/features/cart/presentation/views/cart_view.dart';
import 'package:shop_app/features/home/presentation/views/home_view.dart';
import 'package:shop_app/features/home/presentation/views/product_details_view.dart';
import 'package:shop_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter
{
  static const kLoginView = 'loginView';
  static const kRegisterView = 'registerView';
  static const kForgotPasswordView = 'forgotPasswordView';
  static const kHomeView = 'homeView';
  static const kProductDetailsView = 'productDetailsView';
  static const kCartView = 'cartView';
  static const kCurrentBody = 'currentBody';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView(),
        routes: <RouteBase>[
           GoRoute(
            path: kLoginView,
            builder: (BuildContext context, GoRouterState state) =>
                const LoginView(),
          ),
           GoRoute(
            path: kRegisterView,
            builder: (BuildContext context, GoRouterState state) =>
                const SignUpView(),
          ),
           GoRoute(
            path: kForgotPasswordView,
            builder: (BuildContext context, GoRouterState state) =>
                const ForgotPassword(),
          ),
           GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) =>
                const HomeView(),
          ),
          GoRoute(
            path: kProductDetailsView,
            builder: (BuildContext context, GoRouterState state) =>
                const ProductDetailsView(),
          ),
          GoRoute(
            path: kCartView,
            builder: (BuildContext context, GoRouterState state) =>
                const CartView(),
          ),
          GoRoute(
            path: kCurrentBody,
            builder: (BuildContext context, GoRouterState state) =>
                const CurrentBody(),
          ),
        ]
        ),
    ]
    );
}