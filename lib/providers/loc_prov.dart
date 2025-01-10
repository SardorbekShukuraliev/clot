import 'package:flutter/material.dart';

class LocalizationProvider extends ChangeNotifier {
  Locale _locale = const Locale('en'); // Начальный язык (английский)

  Locale get locale => _locale;

  // Метод для смены языка
  void changeLanguage(String languageCode) {
    _locale = Locale(languageCode);
    notifyListeners();  // Оповещаем об изменении языка
  }

  // Метод для перевода текста
  String translate(String key) {
    // Переводы для разных языков
    const translations = {
      'en': {
        'greeting': 'Hello!',
        'changeLanguage': 'Change Language',
      },
      'ru': {
        'greeting': 'Привет!',
        'changeLanguage': 'Сменить язык',
      },
    };

    // Возвращаем значение перевода в зависимости от текущего языка
    return translations[_locale.languageCode]?[key] ?? key;
  }
}

class ClotTextsEng {
  static const translations = {
    'en': {
      'singIn': 'Sign in',
      'sentEmailText': 'We Sent you an Email to reset your Password.',
      'forgotPasswordHeading': 'Forgot Password',
      'createAccountHeading': 'Create Account',
      'tellUsAboutYourSelf': 'Tell us About Yourself',

      'dontHaveAccount': "Don't have an Account ?",
      'forgotPassword': "Forget password ?",
      'alreadyHaveAnAccount': "Already have an Account",
      'whoDoYouShopFor': "Who do you shop for ?",
      'howOldAreYou': "How Old are you ?",
      'categories': "Categories",
      'newIn': "New In",
      'topSelling': "Top Selling",

      // Categories
      'hoodies': "Hoodies",
      'shorts': "Shorts",
      'shoes': "Shoes",
      'bag': "Bag",
      'accessories': "Accessories",
      'shopByCategories': "Shop by Categories",

      // Button texts
      'buttonContinueText': 'Continue',
      'buttonAppleText': 'Continue With Apple',
      'buttonGoogleText': 'Continue With Google',
      'buttonFacebookText': 'Continue With Facebook',
      'returnToLogin': 'Return to Login',
      'createOne': 'Create one',
      'reset': 'Reset',
      'finish': 'Finish',
      'seeAll': 'See All',

      // TextField hint texts
      'emailAddressText': 'Email Address',
      'emailAddressEnterText': 'Enter Email Address',
      'passwordText': 'Password',
      'firstNameText': 'Firstname',
      'lastNameText': 'Lastname',
      'search': 'Search',

      // DropDown texts
      'ageRange': "Age range",
      'age18To25': "18-25",
      'age26To35': "26-35",
      'men': "Men",
      'woman': "Women",
      'kids': "Kids",

      // Product texts
      'jacket': "Men's Harrington Jacket",
      'jacketPrice': "\$148.00",
      'salePrice': "\$220.00",
      'slides': "Max Cirro Men's Slides",
      'slidesPrice': "\$55.00",
      'slidesPriceSale': "\$55.00",

      // Notification texts
      'notification': "Notifications",
      'noNotification': "No Notification yet",
      'exploreCategories': "Explore Categories",
      'notificationMessage1':
          "Gilbert, you placed an order check your \norder history for full details",
      'notificationMessage2':
          "Gilbert, Thank you for shopping with us we\n have canceled order #24568.",
      'notificationMessage3':
          "Gilbert, your Order #24568 has been  \nconfirmed check  your order history for full details",

      // Orders texts
      'orders': "Orders",
      'noOrders': "No Orders yet",
      'processing': "Processing",
      'shipped': "Shipped",
      'delivered': "Delivered",
      'returned': "Returned",
      'canceled': "Canceled",
      'order1': "Order  #456765",
      'order2': "Order  #454569",
      'order3': "Order  #454809",
      'shippingDetails': "Shipping details",
      'detailAddress': '2715 Ash Dr. San Jose, South Dakota 83475',
      'detailPhone': '121-224-7890',
      'orderConfirmed': 'Order Confirmed ',
      'orderPlaced': 'Order Placed ',
      'orderItems': 'Order Items ',

      // Profile texts
      'userFullName': "Isfandiyor Madaminov",
      'userEmail': "isfanidyormadaminov12@gmail.com",
      'userPhoneNumber': "+998 (77) 777 77 77",
      'address': "Address",
      'addAddress': "Add Address",
      'wishlist': "Wishlist",
      'payment': "Payment",
      'help': "Help",
      'support': "Support",
      'signOut': "Sign Out",
      'addressDetail': "2715 Ash Dr. San Jose, South Dakota 83475",
      'streetAddress': "Street Address",
      'enterStreetAddress': 'Please enter your street address',
      'city': "City",
      'enterCity': 'Please enter your city',
      'state': "State",
      'enterState': 'Please enter your state',
      'zipCode': "Zip Code",
      'enterZipCode': 'Please enter your zip code',
      'save': 'Save',

      'addCard': 'Add Card',
      'cardNumber': "Card Number",
      'enterCardNumber': 'Please enter your card number',
      'ccv': 'CCV',
      'enterCCV': 'Please enter your card ccv',
      'exp': 'Exp',
      'enterExp': 'Please enter your card exp',
      'cardholderName': 'Cardholder Name',
      'enterCardholderName': 'Please enter your card cardholder number',

      'cards': 'Cards',
      'paypal': 'Paypal',
      'myFavourite': 'My Favourite',
      'tShirt': 'T-Shirts',
      'noSearchMatch':
          "Sorry, we couldn't find any matching result for your Search.",

      'cart': 'Cart',
      'emptyCart': 'Your Cart is Empty',

      'removeAll': "Remove All",
      'subtotal': "Subtotal",
      'shippingCost': "Shipping Cost",
      'tax': "Tax",
      'total': "Total",
      'enterCouponCode': "Enter Coupon Code",
      'checkout': "Checkout",
      'placeOrder': "Place Order",
      'shippingAddress': "Shipping Address",
      'paymentMethod': "Payment Method",
      'addShippingAddress': "Add Shipping Address",
      'addPaymentMethod': "Add Payment Method",
      'orderPlacedSuccessfully': "Order Placed Successfully",
      'receiveEmail': "You will recieve an email confirmation",
      'seeOrderDetails': "See Order details",

      'ru': {
        // Headings
        'singIn': 'Войти',
        'sentEmailText': 'Мы отправили вам письмо для сброса пароля.',
        'forgotPasswordHeading': 'Забыли пароль',
        'createAccountHeading': 'Создать аккаунт',
        'tellUsAboutYourSelf': 'Расскажите о себе',

        'dontHaveAccount': "Нет аккаунта?",
        'forgotPassword': "Забыли пароль?",
        'alreadyHaveAnAccount': "Уже есть аккаунт",
        'whoDoYouShopFor': "Для кого вы покупаете?",
        'howOldAreYou': "Сколько вам лет?",
        'categories': "Категории",
        'newIn': "Новинки",
        'topSelling': "Лучшие продажи",

        // Categories
        'hoodies': "Худи",
        'shorts': "Шорты",
        'shoes': "Обувь",
        'bag': "Сумка",
        'accessories': "Аксессуары",
        'shopByCategories': "Покупать по категориям",

        // Button texts
        'buttonContinueText': 'Продолжить',
        'buttonAppleText': 'Продолжить с Apple',
        'buttonGoogleText': 'Продолжить с Google',
        'buttonFacebookText': 'Продолжить с Facebook',
        'returnToLogin': 'Вернуться к входу',
        'createOne': 'Создать',
        'reset': 'Сбросить',
        'finish': 'Завершить',
        'seeAll': 'Посмотреть все',

        // TextField hint texts
        'emailAddressText': 'Электронная почта',
        'emailAddressEnterText': 'Введите электронную почту',
        'passwordText': 'Пароль',
        'firstNameText': 'Имя',
        'lastNameText': 'Фамилия',
        'search': 'Поиск',

        // DropDown texts
        'ageRange': "Возраст",
        'age18To25': "18-25",
        'age26To35': "26-35",
        'men': "Мужчины",
        'woman': "Женщины",
        'kids': "Дети",

        // Product texts
        'jacket': "Мужская куртка Harrington",
        'jacketPrice': "\$148.00",
        'salePrice': "\$220.00",
        'slides': "Слайды Max Cirro для мужчин",
        'slidesPrice': "\$55.00",
        'slidesPriceSale': "\$55.00",

        // Notification texts
        'notification': "Уведомления",
        'noNotification': "Нет уведомлений",
        'exploreCategories': "Изучить категории",
        'notificationMessage1': "Гилберт, вы разместили заказ, проверьте \nисторию заказов для подробностей",
        'notificationMessage2': "Гилберт, спасибо за покупки у нас, мы\n отменили заказ #24568.",
        'notificationMessage3': "Гилберт, ваш заказ #24568 был \nподтверждён, проверьте историю заказов для подробностей",

        // Orders texts
        'orders': "Заказы",
        'noOrders': "Нет заказов",
        'processing': "В обработке",
        'shipped': "Отправлено",
        'delivered': "Доставлено",
        'returned': "Возвращено",
        'canceled': "Отменено",
        'order1': "Заказ #456765",
        'order2': "Заказ #454569",
        'order3': "Заказ #454809",
        'shippingDetails': "Детали доставки",
        'detailAddress': '2715 Ash Dr. Сан-Хосе, Южная Дакота 83475',
        'detailPhone': '121-224-7890',
        'orderConfirmed': 'Заказ подтверждён',
        'orderPlaced': 'Заказ размещён',
        'orderItems': 'Товары в заказе',

        // Profile texts
        'userFullName': "Исфандийор Мадаминов",
        'userEmail': "isfanidyormadaminov12@gmail.com",
        'userPhoneNumber': "+998 (77) 777 77 77",
        'address': "Адрес",
        'addAddress': "Добавить адрес",
        'wishlist': "Список желаемого",
        'payment': "Оплата",
        'help': "Помощь",
        'support': "Поддержка",
        'signOut': "Выйти",
        'addressDetail': "2715 Ash Dr. Сан-Хосе, Южная Дакота 83475",
        'streetAddress': "Улица",
        'enterStreetAddress': 'Введите адрес улицы',
        'city': "Город",
        'enterCity': 'Введите город',
        'state': "Штат",
        'enterState': 'Введите штат',
        'zipCode': "Почтовый индекс",
        'enterZipCode': 'Введите почтовый индекс',
        'save': 'Сохранить',

        'addCard': 'Добавить карту',
        'cardNumber': "Номер карты",
        'enterCardNumber': 'Введите номер карты',
        'ccv': 'CCV',
        'enterCCV': 'Введите код безопасности карты',
        'exp': 'Срок действия',
        'enterExp': 'Введите срок действия карты',
        'cardholderName': 'Имя владельца карты',
        'enterCardholderName': 'Введите имя владельца карты',

        'cards': 'Карты',
        'paypal': 'Paypal',
        'myFavourite': 'Мои избранные',
        'tShirt': 'Футболки',
        'noSearchMatch': "Извините, мы не нашли подходящих результатов по вашему запросу.",

        'cart': 'Корзина',
        'emptyCart': 'Ваша корзина пуста',

        'removeAll': "Удалить все",
        'subtotal': "Промежуточный итог",
        'shippingCost': "Стоимость доставки",
        'tax': "Налог",
        'total': "Итого",
        'enterCouponCode': "Введите код купона",
        'checkout': "Оформить заказ",
        'placeOrder': "Оформить заказ",
        'shippingAddress': "Адрес доставки",
        'paymentMethod': "Способ оплаты",
        'addShippingAddress': "Добавить адрес доставки",
        'addPaymentMethod': "Добавить способ оплаты",
        'orderPlacedSuccessfully': "Заказ успешно размещён",
        'receiveEmail': "Вы получите подтверждение на почту",
        'seeOrderDetails': "Посмотреть детали заказа",
      },
    },
  };
}
