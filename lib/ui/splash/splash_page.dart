import '../../utils/file_importer/file_importer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
      Future.delayed( const Duration(seconds: 3)).then((value) =>mounted?
          Navigator.pushNamedAndRemoveUntil(context, allMusics, (route) => false):null);


    // FirebaseMessaging.instance.getToken().then((value) async {
    //   var shared = await SharedPreferences.getInstance();
    //   await shared.setString("token", value!);
    //   debugPrint("Token: $value");
    // });
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // Image.asset(AppImages.logo,width: 200,),
            Text("Konsta App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
