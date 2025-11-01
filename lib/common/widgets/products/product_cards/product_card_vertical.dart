import 'package:firebase_getx/common/widgets/circuler_shapes/rounded_container.dart';
import 'package:firebase_getx/utils/constants/imports.dart';

class UProductCardVertical extends StatelessWidget {
  const UProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: UShadow.verticalProductShadow,
        borderRadius: BorderRadius.circular(uProductImageRadius),
        color:  darkLightColor(context,darkColor: uDarkGrey,lightColor: uWhite),
      ),
      child: Column(
        children: [
          URoundedContainer(
            width: 100,
            padding: EdgeInsets.all(uSm),
            backgroundColor: darkLightColor(context),
            // backgroundColor: dark ? uDark : uLight,
            child: Stack(children: [Image(image: AssetImage(product15Image)),URoundedContainer(
            radius: uSm,
            backgroundColor: uYellow,
            padding: EdgeInsets.symmetric(horizontal: uSm,vertical:uXs),
            child: Text('20%',style: Theme.of(context).textTheme.labelLarge!.apply(color: uBlack),),
          )]),
          ),
          
        ],
      ),
    );
  }
}
