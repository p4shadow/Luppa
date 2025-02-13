import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rive/rive.dart';
import 'package:luppa_app/cards/product_cards/smooth_product_base_card.dart';
import 'package:luppa_app/themes/smooth_theme.dart';
import 'package:luppa_app/themes/smooth_theme_colors.dart';
import 'package:luppa_app/widgets/smooth_text.dart';

class ScanProductCardLoading extends StatelessWidget {
  ScanProductCardLoading({
    required this.barcode,
    this.onRemoveProduct,
  }) : assert(barcode.isNotEmpty);

  final String barcode;
  final OnRemoveCallback? onRemoveProduct;

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);
    final SmoothColorsThemeExtension theme =
        context.extension<SmoothColorsThemeExtension>();

    return ScanProductBaseCard(
      headerLabel: appLocalizations.carousel_loading_header,
      headerIndicatorColor: theme.error,
      onRemove: onRemoveProduct,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ScanProductBaseCardTitle(
            title: appLocalizations.carousel_loading_title,
          ),
          ScanProductBaseCardBarcode(
            barcode: barcode,
            height: 75.0,
          ),
          ScanProductBaseCardText(
            text: TextWithBoldParts(
              text: appLocalizations.carousel_loading_text,
              textStyle: const TextStyle(
                fontSize: 14.5,
              ),
            ),
          ),
          const Spacer(flex: 10),
          const Expanded(
            flex: 80,
            child: ExcludeSemantics(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: RiveAnimation.asset(
                  'assets/animations/off.riv',
                  artboard: 'Loading',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }
}
