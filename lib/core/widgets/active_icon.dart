part of app_core;

class ActiveIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  const ActiveIcon({Key? key, required this.icon, this.size = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: appTheme.blueGray800, shape: BoxShape.circle),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
