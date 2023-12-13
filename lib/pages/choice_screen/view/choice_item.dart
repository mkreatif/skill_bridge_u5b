part of app_choice_screen;

class ChoiceItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Function()? onPressed;
  final String labelBtn;
  const ChoiceItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.onPressed,
    required this.labelBtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3,
        vertical: 2.v,
      ),
      child: Row(
        children: [
          Container(
            height: 130.adaptSize,
            width: 130.adaptSize,
            padding: const EdgeInsets.all(15),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: imagePath,
              height: 99.adaptSize,
              width: 99.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22,
              top: 17.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 12.v),
                Text(
                  description,
                  style: CustomTextStyles.titleSmallMontserrat,
                ),
                SizedBox(height: 6.v),
                CustomElevatedButton(
                  height: 35.v,
                  width: 160.v,
                  text: labelBtn,
                  onPressed: onPressed,
                  buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
