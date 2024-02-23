import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


Widget homeFooter(BuildContext context) {
  List<Widget> rowChildren = [
    TextButton(
      onPressed: () => context.go("/imprint"), 
      child: Text(AppLocalizations.of(context)!.imprint)
    ),
    TextButton(
      onPressed: () => context.go("/privacy-policy"), 
      child: Text("Privacy Policy")
    ),
    TextButton(
      onPressed: _launchLicense, 
      child: Text("License")
    ),
  ];
  return Container(
    padding: const EdgeInsets.all(12),
    height: 100.0,
    color: Colors.grey[200],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: rowChildren,
        ),
        const Text(
          "Copyright © 2024 Venkata Mukund Kashyap Yedunuthala"
        )
      ],
    )
  );
}

_launchLicense() async {
  final Uri sourceUri = Uri.parse("https://git.mukund-yedunuthala.de/mukund-yedunuthala/flags_n_feels_flutter/src/branch/main/LICENSE");
  if (!await launchUrl(sourceUri)) {
    throw Exception('Could not launch $sourceUri');
  }
}