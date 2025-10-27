part of '../login.dart';

class _ULoginHeader extends StatelessWidget {
  const _ULoginHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(UTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        Text(UTexts.loginSubTitle, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
