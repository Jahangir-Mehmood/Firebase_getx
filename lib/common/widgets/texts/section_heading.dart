import 'package:firebase_getx/utils/constants/imports.dart';

class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key, required this.title, this.buttonTitle = 'View All', this.onPress,
  });
 
  final String title,buttonTitle;
  final VoidCallback? onPress;
  
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(title,style: Theme.of(context).textTheme.headlineSmall,maxLines: 1,overflow: TextOverflow.ellipsis,),
       TextButton(onPressed: onPress, child: Text(buttonTitle))
     ]);
  }
}