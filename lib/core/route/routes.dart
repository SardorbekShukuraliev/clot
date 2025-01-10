import 'package:go_router/go_router.dart';
import 'package:justtrainingmygryobanniyskill/features/home/order/ord_det.dart';
import '../../features/auth/sign_in/forgot_password.dart';
import '../../features/auth/sign_in/frst_sign_in.dart';
import '../../features/auth/sign_in/scnd_s_in.dart';
import '../../features/auth/sign_up/create_account.dart';
import '../../features/home/categories.dart';
import '../../features/home/category_v_kvadrate.dart';
import '../../features/home/home.dart';
import '../consts/send_info_about_reset.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/features/sign_in/frst_sign_in.dart',
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: '/features/sign_in/scnd_s_in.dart',
      builder: (context, state) => const SecondRegisterPage(),
    ),
    GoRoute(
      path: '/features/sign_in/forgot_password.dart',
      builder: (context, state) => const Forgot_Password_Page(),
    ),
    GoRoute(
      path: '/features/sign_in/send_info_about_reset.dart',
      builder: (context, state) => const Send_info_Page(),
    ),
    GoRoute(
      path: '/features/sign_up/create_account.dart',
      builder: (context, state) => CreateAccountScreen(),
    ),GoRoute(
      path: '/features/home/home.dart',
      builder: (context, state) =>   HomePage(),
    ),
    GoRoute(
      path: '/features/home/categories.dart',
      builder: (context, state) =>   ShopCategories(),
    ),GoRoute(
      path: '/features/home/category_v_kvadrate.dart',
      builder: (context, state) =>   SecondShopCategories(category: "text",),
    ),
    GoRoute(
      path: '/features/home/footer/footer.dart',
      builder: (context, state) =>   SecondShopCategories(category: '',),
    ),
    GoRoute(
      path: '/features/home/footer/notification.dart',
      builder: (context, state) =>   SecondShopCategories(category: "",),
    ),
    GoRoute(
      path: '/features/home/footer/order.dart',
      builder: (context, state) =>   SecondShopCategories(category: "",),
    ),
    GoRoute(
      path: '/features/home/footer/profile.dart',
      builder: (context, state) =>   SecondShopCategories(category: "",),
    ),
    GoRoute(
      path: '/features/home/order/ord_det.dart',
      builder: (context, state) =>   OrderDetails(),
    ),
  ],
);

