part of app_user_library;

class ProjectProgress extends StatelessWidget {
  final Color? backgroundColor;
  final double progress;
  const ProjectProgress(
      {Key? key, this.backgroundColor, required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
                  "Progres Pembuatan\nWebsite mu Sudah $progress%",
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    FontFamily.poppins,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Look your project here",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      FontFamily.poppins,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Gap(20),
          SizedBox(
            height: 73,
            width: 73,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CircularProgressIndicator(
                    value: progress / 100,
                    strokeWidth: 10,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      HexColor('#F6E7C0'),
                    ),
                    backgroundColor: HexColor('6DA5C0'),
                  ),
                ),
                Center(
                  child: Text(
                    "$progress%",
                    style: safeGoogleFont(
                      FontFamily.poppins,
                      fontWeight: FontWeight.bold,
                      fontSize: 14, 
                      color: HexColor('#F6E7C0'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
