part of app_user_library;

class AnotherYouLikeItem extends StatelessWidget {
  final Color? backgroundColor;
  final String price;
  final String description;
  final String? imagePath;
  final String name;
  const AnotherYouLikeItem(
      {Key? key,
      this.backgroundColor,
      required this.price,
      required this.description,
      this.imagePath,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: backgroundColor ?? appTheme.blueGray800,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  description,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    FontFamily.poppins,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(4),
                Text(
                  "Rp $price >>",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    FontFamily.poppins,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                Gap(4),
                Text(
                  name,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    FontFamily.poppins,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Gap(20),
          SizedBox(
            height: 73,
            width: 73,
            child: Image.asset(
              imagePath ?? ImageConstant.imageNotFound,
            ),
          )
        ],
      ),
    );
  }
}
