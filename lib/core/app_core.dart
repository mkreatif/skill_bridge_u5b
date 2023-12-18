library app_core;

import 'dart:io';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

/// ===[CONSTANT]====
part 'constants/constants.dart';

/// ====[THEME]======
part 'theme/app_decoration.dart';
part 'theme/custom_button_style.dart';
part 'theme/custom_text_style.dart';
part 'theme/theme_helper.dart';

/// ====[UTILS]======
part 'utils/date_time_utils.dart';
part 'utils/image_constant.dart';
part 'utils/size_utils.dart';


/// ====[WIDGETS]=====
part 'widgets/base_button.dart';
part 'widgets/custom_text_form_field.dart';
part 'widgets/custom_elevated_button.dart';
part 'widgets/custom_image_view.dart';
part 'widgets/base_layout.dart';
part 'widgets/text_style.dart';
