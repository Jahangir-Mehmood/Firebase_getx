import '../../utils/constants/imports.dart';

class UPromoCodeField extends StatelessWidget {
  const UPromoCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return URoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(left: uMd, right: uSm, top: uSm, bottom: uSm),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.withValues(alpha: 0.2),
                foregroundColor: dark ? uWhite.withValues(alpha: 0.5) : uDark.withValues(alpha: 0.5),
                side: BorderSide(color: Colors.grey.withValues(alpha: 0.1)),
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}