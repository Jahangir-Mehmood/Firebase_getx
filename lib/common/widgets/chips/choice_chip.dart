import 'package:firebase_getx/common/widgets/custom_shapes/circular_container.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key, required this.text, required this.selected, required this.onSelected,
  });

final String text;
final bool selected;
final Function(bool?) onSelected;

  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunctions.getColor(text) != null;
    return ChoiceChip(label: isColor ? SizedBox() : Text(text), selected: selected,onSelected: onSelected,labelStyle: TextStyle(color: selected ? uWhite : null),
    shape: isColor ? CircleBorder() : null,
    padding: isColor ? EdgeInsets.zero : null,
    labelPadding: isColor ? EdgeInsets.zero : null,
    avatar: isColor ? UCircularContainer(height: 50, width: 50,backgroundColor: UHelperFunctions.getColor(text)!) : null,
    backgroundColor: isColor ? UHelperFunctions.getColor(text) : null,
    );
  }
}