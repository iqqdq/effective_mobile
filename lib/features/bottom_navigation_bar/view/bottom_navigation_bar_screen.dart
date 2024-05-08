import 'package:auto_route/auto_route.dart';
import 'package:effective_mobile/components/components.dart';
import 'package:flutter/material.dart';
import 'package:effective_mobile/router/router.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titles = [
      Titles.tickets,
      Titles.hotels,
      Titles.shorts,
      Titles.subscriptions,
      Titles.profile,
    ];

    return AutoTabsRouter(
      routes: [
        const HomeRoute(),
        StubBarRoute(title: titles[1]),
        StubBarRoute(title: titles[2]),
        StubBarRoute(title: titles[3]),
        StubBarRoute(title: titles[4]),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: SizedBox.expand(
            child: Column(
              children: [
                Expanded(child: child),

                /// DIVIDER
                Container(
                  height: 0.5,
                  color: Theme.of(context).dividerColor,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: theme.scaffoldBackgroundColor,
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.hintColor,
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: theme.primaryColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: theme.hintColor,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_first_tab.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/ic_first_tab_blue.svg'),
                label: titles[0],
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset('assets/icons/ic_second_tab.svg'),
                  activeIcon:
                      SvgPicture.asset('assets/icons/ic_second_tab_blue.svg'),
                  label: titles[1]),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_third_tab.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/ic_third_tab_blue.svg'),
                label: titles[2],
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_fourth_tab.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/ic_fourth_tab_blue.svg'),
                label: titles[3],
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_fifth_tab.svg'),
                activeIcon:
                    SvgPicture.asset('assets/icons/ic_fifth_tab_blue.svg'),
                label: titles[4],
              ),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
