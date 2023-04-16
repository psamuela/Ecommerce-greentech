import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:greentech/features/home/view/home_view.dart';
import 'package:provider/provider.dart';
import 'features/common/nointernet/view/no_internet_view.dart';
import 'product/manager/connectivity_manager.dart';
import 'core/extensions/app_extensions.dart';
import 'features/common/splash/view/splash_view.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'package:custom_top_navigator/custom_top_navigator.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => ConnectivityManager(),
            )
          ],
          child: const MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  static const String path = '/';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        onGenerateRoute: NavigationRoute.generateRoute,
        title: 'GreenTech',
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
         primaryColor: context.green,
      ),
        home: const SplashView(),
      );

 
}



class BottomBarScreen extends StatefulWidget {

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  

  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': const HomeView(),
      },
      
      {
        'page': const HomeView(),
      },
    
      
     
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      navigatorKey.currentState?.maybePop();
      _selectedPageIndex = index;


    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color(0xfff1faf1),
       body: CustomTopNavigator(
        navigatorKey: navigatorKey,
       // home: _pages[_selectedPageIndex]['page'],
        pageRoute: PageRoutes.materialPageRoute,
      ),
      
      
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              border: Border(
                top: BorderSide(
                  color: 
                             Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
               type: BottomNavigationBarType.fixed,
              onTap: _selectPage,
              backgroundColor:  const Color(0xfff1faf1),
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.green,
              currentIndex: _selectedPageIndex,
              
              items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
            ),

           
             BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: "My Profile",
            backgroundColor: Colors.blue,
            ),

           
        ],
            ),
          ),
        ),
      ),
     
     
    );
  }
}