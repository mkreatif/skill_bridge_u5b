part of app_user_library;

class CustomDivider extends StatelessWidget {
  final String label;
  final double fontSize;
  final double thickness;
  final Color color;
  final TextDirection textDirection;

  const CustomDivider({
    Key? key,
    required this.label,
    this.fontSize = 14,
    this.thickness = 2,
    required this.color,
    this.textDirection = TextDirection.ltr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        textDirection: textDirection,
        children: [
          Text(
            label,
            style: safeGoogleFont(
                color: color,
                FontFamily.poppins,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
          Gap(10),
          Expanded(
            child: Divider(
              thickness: thickness,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
