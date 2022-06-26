// ignore_for_file: prefer_const_declarations

import 'package:music_popular/app/core/theme/theme_ui.dart';

final isTablet = Get.width > 600 && GetPlatform.isMobile;

final spacePaddingBottom = Get.mediaQuery.viewPadding.bottom;
final edgeInsetsList =
    EdgeInsets.only(top: spaceM, bottom: spaceM + spacePaddingBottom);

final heightAppBarTitle = 60.0;
final heightAppBarCustomer = 120.0;
final heightAppBarCustomerAndTabbar = 90.0;
final heightEmployeeWidget = 100.0;

final sizeImageCustomer = 65.0;

final spaceSSS = 2.0;
final spaceSS = 4.0;
final spaceS = 8.0;
final spaceM = 16.0;
final spaceL = 24.0;
final spaceXL = 32.0;
final spaceXXL = 40.0;
final spaceXXXL = 48.0;
final spaceXXXXL = 56.0;
final spacePadding = isTablet ? spaceM : spaceS;

final horizontalSpaceSSS = SizedBox(width: spaceSSS);
final horizontalSpaceSS = SizedBox(width: spaceSS);
final horizontalSpaceS = SizedBox(width: spaceS);
final horizontalSpaceM = SizedBox(width: spaceM);
final horizontalSpaceL = SizedBox(width: spaceL);
final horizontalSpaceXL = SizedBox(width: spaceXL);
final horizontalSpaceXXL = SizedBox(width: spaceXXL);
final horizontalSpaceXXXL = SizedBox(width: spaceXXXL);

final verticalSpaceSSS = SizedBox(height: spaceSSS);
final verticalSpaceSS = SizedBox(height: spaceSS);
final verticalSpaceS = SizedBox(height: spaceS);
final verticalSpaceM = SizedBox(height: spaceM);
final verticalSpaceL = SizedBox(height: spaceL);
final verticalSpaceXL = SizedBox(height: spaceXL);
final verticalSpaceXXL = SizedBox(height: spaceXXL);
final verticalSpaceXXXL = SizedBox(height: spaceXXXL);

double maxWidthScreen = isTablet ? 440 : Get.width - spaceXL;
double maxHeightScreen = isTablet ? 640 : Get.height - spaceXL;
