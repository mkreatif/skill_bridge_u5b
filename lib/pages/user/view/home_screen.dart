part of app_user_library;

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return controller.onWillPopScope();
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: BaseLayout(
          padding: EdgeInsets.only(bottom: 65),
          child: Obx(
            () => IndexedStack(
              index: controller.index.value,
              children: [
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text("This feature is still under development,"),
                  ),
                ),
                DashboardScreen(),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Text("This feature is still under development,"),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              iconSize: 30,
              currentIndex: controller.index.value,
              backgroundColor: Colors.transparent,
              elevation: 0,
              onTap: (value) {
                controller.index.value = value;
              },
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.chat_outlined,
                    color: Colors.black,
                  ),
                  activeIcon: ActiveIcon(icon: Icons.chat),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  activeIcon: ActiveIcon(icon: Icons.home),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.black,
                  ),
                  activeIcon: ActiveIcon(icon: Icons.person),
                ),
              ],
            )),
      ),
    );
  }
}
