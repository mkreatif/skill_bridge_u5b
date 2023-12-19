part of app_user_library;

class CardPopularGigs extends StatelessWidget {
  final PopularGigs gig;
  const CardPopularGigs({Key? key, required this.gig}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.3,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: appTheme.teal700, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            gig.imagePath,
            width: 47,
          ),
          Gap.expand(8),
          Text(
            gig.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: safeGoogleFont(
              color: appTheme.lime100,
              FontFamily.poppins,
              fontSize: 12,
            ),
          ),
          Text(
            gig.price,
            style: safeGoogleFont(
              color: appTheme.lime100,
              FontFamily.poppins,
              fontSize: 12,
            ),
          ),
          Text(
            gig.job,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: safeGoogleFont(
              color: appTheme.lime100,
              FontFamily.poppins,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
