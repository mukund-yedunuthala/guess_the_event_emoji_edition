import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_app_bar.dart';
import 'package:guess_the_event_emoji_edition/ui/common/custom_footer.dart';
import 'package:guess_the_event_emoji_edition/ui/imprint/imprint_centered_view.dart';

class ImprintView extends StatelessWidget {
  const ImprintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context, 
        AppLocalizations.of(context)!.footerImprint, "/"),
      body: const Center(
        child: ImprintCenteredView()
      ),
      bottomNavigationBar: customFooter(context),
    );
  }
}