import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/features/home/ui/widgets/build_container_body.dart';
import 'package:to_do_app/features/home/ui/widgets/custom_build_show_bottom_sheet.dart';

class CustomBuildTask extends StatelessWidget {
  const CustomBuildTask({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return CustomShowModalBottomSheet(customContext: context);
          },
        );
      },
      child: Container(
        //width: 327.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.red,
        ),
        child: BuildContainerBody(),
      ),
    );
  }
}
