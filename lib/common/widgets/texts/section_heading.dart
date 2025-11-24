import 'package:firebase_getx/utils/constants/imports.dart';

class USectionHeading extends StatelessWidget {
  const USectionHeading({
    super.key, required this.title, this.buttonTitle = 'View All', this.onPress,this.showActionButton = true
  });
 
  final String title,buttonTitle;
  final VoidCallback? onPress;
  final bool showActionButton;
  
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(title,style: Theme.of(context).textTheme.headlineSmall,maxLines: 1,overflow: TextOverflow.ellipsis,),
      if(showActionButton) TextButton(onPressed: onPress, child: Text(buttonTitle))
     ]);
  }
}