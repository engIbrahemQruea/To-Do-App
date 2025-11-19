import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/theme_cubit/switch_theme_cubit.dart';

class CustomIconButtonTheme extends StatelessWidget {
  const CustomIconButtonTheme({
    required this.mode,
    required this.isDark,
    super.key,
  });
  final mode;
  final isDark;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<SwitchThemeCubit>().toggleDarkLight();
      },
      iconSize: 28.r,
      icon: Icon(
        isDark == false ? Icons.wb_sunny_rounded : Icons.mode_night_rounded,
      ),
    );
  }
}
