part of app_user_library;

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: BaseLayout(
        child: Obx(
          () => IndexedStack(
            index: controller.index.value,
            children: [
              Container(
                color: Colors.amber,
              ),
              DashboardScreen(),
              Container(
                color: Colors.yellow,
              )
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
    );
  }
}
