import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/refresh_home_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var format = DateFormat.yMMMMd().format(DateTime.now());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(format, style: ClsAppStyles.font24Bold),
            verticalSpace(12),
            RefreshHomeScreen(),
          ],
        ),
      ),
    );
  }
}
