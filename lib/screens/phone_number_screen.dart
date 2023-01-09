import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_design/core/app_colors.dart';
import 'package:ios_design/cubits/country_cubit.dart';
import 'package:ios_design/screens/cupertino_tab_screen.dart';
import 'package:ios_design/widgets/custom_text.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  late TextEditingController phone;
  // var countryCodeList = List.generate(100, (index) => Text);
  var countryList = ['Pakistan', 'Afghanistan', 'Turkey', 'Iran', 'Bangladesh'];
  var country = 'Pakistan';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    phone = TextEditingController(
      text: 'Pakistan',
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // padding: EdgeInsetsDirectional.only(top: 40.h, bottom: 40.h),
          trailing: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => CupertinoTabScreen()));
              },
              child: const Text(
                'Done',
                style: TextStyle(color: CupertinoColors.activeBlue),
              )),
          //backgroundColor: AppColors.appBarColor,
          middle: Text(
            'Phone number',
            style: TextStyle(fontSize: 17.sp),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Text(
            //       'Phone number',
            //       style: TextStyle(fontSize: 17.sp),
            //     ),
            //     SizedBox(
            //       width: 70.w,
            //     ),
            //     const CupertinoButton(child: Text("Done"), onPressed: null),
            //   ],
            // ),
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 37.w, right: 37.w),
              child: const Text(
                textAlign: TextAlign.center,
                'Please confirm your country code and enter your phone number',
                style: TextStyle(),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            BlocBuilder<CountryCubit, String>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    _showDialog(CupertinoPicker(
                        magnification: 1.22,
                        squeeze: 1.2,
                        useMagnifier: true,
                        itemExtent: 40.h,
                        onSelectedItemChanged: (item) {
                          context
                              .read<CountryCubit>()
                              .changeCountry(countryList[item]);
                        },
                        children: List.generate(
                            countryList.length,
                            (index) => Center(
                                  child: Text(countryList[index]),
                                ))));
                  },
                  child: Container(
                      padding: EdgeInsets.only(left: 5.w, right: 5.w),
                      height: 50.h,
                      decoration: BoxDecoration(
                          border: Border(top: BorderSide(width: 0.3))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: CustomText(
                              text: state,
                              color: CupertinoColors.activeBlue,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // showCountryPicker(
                              //     context: context,
                              //     onSelect: (country) {
                              //       context
                              //           .read<CountryCubit>()
                              //           .changeCountry(country.name);
                              //     });
                            },
                            child: Icon(CupertinoIcons.right_chevron),
                          )
                        ],
                      )
                      // CupertinoTextField(
                      //   controller: phone,
                      //   decoration: BoxDecoration(
                      //       border: Border.all(
                      //           color: CupertinoColors.black.withOpacity(0.2),
                      //           width: 2.sp)),
                      //   suffix: GestureDetector(
                      //       onTap: () {
                      //         // showCountryPicker(
                      //         //     context: context,
                      //         //     onSelect: (country) {
                      //         //       context
                      //         //           .read<CountryCubit>()
                      //         //           .changeCountry(country.name);
                      //         //     });
                      //       },
                      //       child: Icon(
                      //         CupertinoIcons.right_chevron,
                      //       )),
                      // ),
                      ),
                );
              },
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // _showDialog(
                    //   CupertinoPicker(itemExtent: 100, onSelectedItemChanged: (item){}, children: )
                    // );
                  },
                  child: Container(
                    height: 50.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: CupertinoColors.black.withOpacity(0.2))),
                    child: const Center(child: Text('+92')),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50.h,
                    child: CupertinoTextField(
                      placeholder: 'phone number',
                      keyboardType: TextInputType.number,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: CupertinoColors.black.withOpacity(0.2))),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  _showDialog(child) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              padding: EdgeInsets.only(top: 10.h),
              // color: CupertinoColors.systemBackground.resolveFrom(context),
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              height: 200.h,
              child: SafeArea(top: false, child: child),
            ));
  }
}
