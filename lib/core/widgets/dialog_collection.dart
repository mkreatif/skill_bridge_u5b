part of app_core;

class DialogCollection {
  static Future<bool> confirmation({
    required String message,
  }) async {
    return await Get.dialog(
        Center(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Material(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstant.imgLogo,
                          width: 30,
                        ),
                        Gap(20),
                        Expanded(
                          child: Text(
                            "Konfirmasi",
                            style: safeGoogleFont(
                              FontFamily.poppins,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: appTheme.blueGray800,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () => Get.back<bool>(result: false),
                            child: Icon(
                              Icons.close,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: appTheme.blueGray600,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          message,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: safeGoogleFont(
                            FontFamily.poppins,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: appTheme.black900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Get.back<bool>(result: true);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: appTheme.lime100,
                              foregroundColor: Colors.black),
                          child: Text("Ya, Lanjutkan"),
                        ),
                        Gap(10),
                        ElevatedButton(
                          style: CustomButtonStyles.baseStyle,
                          onPressed: () {
                            Get.back<bool>(result: false);
                          },
                          child: Text("Tidak"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        barrierDismissible: false);
  }
}
