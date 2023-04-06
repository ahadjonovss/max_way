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
          Navigator.pushNamedAndRemoveUntil(context, home, (route) => false):null);

    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Image.asset(AppImages.logo,width: 200,),
            Text("by Samandar Ahadjonov")

          ],
        ),
      ),
    );
  }
}
