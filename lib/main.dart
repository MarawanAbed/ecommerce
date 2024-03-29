import 'package:ecommerce/core/di/dependancy_injection.dart';
import 'package:ecommerce/core/helpers/cache.dart';
import 'package:ecommerce/ecommerce.dart';
import 'package:flutter/material.dart';

import 'core/utils/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  bool? isOnBoarding = await getIt<SharedPreCacheHelper>()
          .getData(key: AppStrings.onboardingKey) ??
      false;
  bool? isLanguageSelected = await getIt<SharedPreCacheHelper>()
          .getData(key: AppStrings.isLanguageSelected) ??
      false;

  runApp(
    Ecommerce(
      isOnBoarding: isOnBoarding!,
      isLanguageSelected: isLanguageSelected!,
    ),
  );
}
