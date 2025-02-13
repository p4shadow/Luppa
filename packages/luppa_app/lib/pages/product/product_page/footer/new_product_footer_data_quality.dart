import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:provider/provider.dart';
import 'package:luppa_app/pages/product/product_page/footer/new_product_footer.dart';
import 'package:luppa_app/resources/app_icons.dart' as icons;

class ProductFooterDataQualityButton extends StatelessWidget {
  const ProductFooterDataQualityButton();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations appLocalizations = AppLocalizations.of(context);

    return ProductFooterButton(
      label: appLocalizations.product_footer_action_data_quality_tags,
      semanticsLabel: appLocalizations.product_footer_action_data_quality_tags,
      icon: const icons.CheckList(),
      onTap: () => _openDataQualityWarnings(context, context.read<Product>()),
    );
  }

  Future<void> _openDataQualityWarnings(
      BuildContext context, Product product) async {
    // TODO(g123k): Not implemented in off-dart
  }
}
