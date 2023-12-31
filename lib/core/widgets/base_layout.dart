part of app_core;

class BaseLayout extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  const BaseLayout({Key? key, required this.child, this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      padding: padding,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [appTheme.indigo300, appTheme.lime100],
        ),
      ),
      child: child,
    );
  }
}
