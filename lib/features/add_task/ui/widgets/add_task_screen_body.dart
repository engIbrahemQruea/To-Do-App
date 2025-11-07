import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';

class AddTaskScreenBody extends StatelessWidget {
  const AddTaskScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    List<int> remindList = [5, 10, 15, 20];
    List<String> repeatList = ['None', 'Daily', 'Weekly', 'Monthly'];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title', style: ClsAppStyles.font16Regular),
            verticalSpace(5),

            AppTextFormField(hintText: 'Title', validator: (_) {}),
            verticalSpace(10),

            Text('Note', style: ClsAppStyles.font16Regular),
            verticalSpace(5),

            AppTextFormField(hintText: 'Enter note here', validator: (_) {}),
            verticalSpace(10),

            Text('Date', style: ClsAppStyles.font16Regular),
            verticalSpace(5),

            AppTextFormField(
              hintText: '${DateFormat.yMd().format(DateTime.now())}',
              suffixIcon: IconButton(
                onPressed: () {
                  showDateAndSelectDate(context);
                },
                color: ClsAppColors.white,
                iconSize: 30.r,
                icon: Icon(Icons.calendar_today_outlined),
              ),
              readOnly: true,
              validator: (_) {},
            ),
            verticalSpace(10),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Start Time', style: ClsAppStyles.font16Regular),
                      verticalSpace(5),

                      AppTextFormField(
                        hintText: '${DateFormat.jm().format(DateTime.now())}',
                        suffixIcon: IconButton(
                          onPressed: () {
                            showTimeAndSelectTime(context);
                          },
                          color: ClsAppColors.white,
                          iconSize: 30.r,
                          icon: Icon(Icons.access_time_rounded),
                        ),
                        readOnly: true,
                        validator: (_) {},
                      ),
                    ],
                  ),
                ),
                horizontalSpace(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('End Time', style: ClsAppStyles.font16Regular),
                      verticalSpace(5),

                      AppTextFormField(
                        hintText: '${DateFormat.jmz().format(DateTime.now())}',
                        suffixIcon: IconButton(
                          onPressed: () {
                            showTimeAndSelectTime(context);
                          },
                          color: ClsAppColors.white,
                          iconSize: 30.r,
                          icon: Icon(Icons.access_time_rounded),
                        ),
                        readOnly: true,
                        validator: (_) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace(10),

            Text('Remind', style: ClsAppStyles.font16Regular),
            verticalSpace(5),

            AppTextFormField(
              hintText: 'Title',
              readOnly: true,
              suffixIcon: DropdownButton(
                items: remindList
                    .map(
                      (value) =>
                          DropdownMenuItem(value: value, child: Text('$value')),
                    )
                    .toList(),
                borderRadius: BorderRadius.circular(10.r),

                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 32.r,
                  color: ClsAppColors.white,
                ),
                elevation: 4,
                onChanged: (newValue) {},
              ),
              validator: (_) {},
            ),
            verticalSpace(10),

            Text('Repeat', style: ClsAppStyles.font16Regular),
            verticalSpace(5),

            AppTextFormField(
              hintText: 'Title',
              readOnly: true,
              suffixIcon: DropdownButton(
                borderRadius: BorderRadius.circular(10.r),
                items: repeatList
                    .map(
                      (value) =>
                          DropdownMenuItem(value: value, child: Text('$value')),
                    )
                    .toList(),
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: ClsAppColors.white,
                  size: 32.r,
                ),
                elevation: 4,
                onChanged: (newValue) {},
              ),
              validator: (_) {},
            ),
            verticalSpace(10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Color', style: ClsAppStyles.font16Regular),
                verticalSpace(5),
                Wrap(
                  children: List<Widget>.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(24),
                        onTap: () {
                          currentIndex = index;
                        },
                        child: CircleAvatar(
                          child: index == currentIndex
                              ? Icon(
                                  Icons.done,
                                  size: 32.r,
                                  color: Colors.white,
                                )
                              : null,
                          backgroundColor: getColor(index),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(40),
            AppTextButton(
              buttonText: 'Create task',
              textStyle: ClsAppStyles.font16Regular,
              buttonHeight: 60,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  void showDateAndSelectDate(BuildContext context) async {
    //final cubit = context.read<OrderManagerCheckoutCubit>();
    final pickedDate = await showDatePicker(
      context: context,
      barrierColor: ClsAppColors.primaryColor,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 2),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    // if (pickedDate != null && pickedDate != cubit.selectedDate) {
    //   return cubit.updateDate(pickedDate);
    // }
  }

  void showTimeAndSelectTime(BuildContext context) async {
    final pickedTime = await showTimePicker(
      context: context,
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: TimeOfDay.now(),
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child!,
      ),
    );
    // if (pickedTime != null && pickedTime != cubit.selectedTime) {
    //   return cubit.updateTime(pickedTime);
    // }
  }

  getColor(index) {
    switch (index) {
      case 0:
        return Colors.amber;
      case 1:
        return Colors.cyanAccent;
      case 2:
        return Colors.redAccent;
      case 3:
        return Colors.tealAccent;
      case 4:
        return Colors.blueAccent;
      case 5:
        return Colors.grey;
      default:
        return Colors.lightGreenAccent;
    }
  }
}
