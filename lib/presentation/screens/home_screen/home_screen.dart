import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/presentation/screens/movies_screen/movies_screen.dart';

import '../../../business_logic/cubit/home_tab_index_cubit.dart';
import '../../../constants/colors.dart';

/// List of screens which the nav bar will be used to navigate between
List<Widget> screens = [
  const MoviesScreen(),
  const Text('Favorites'),
  const Text('Trending'),
  const Text('Profile'),
];

/// List of screens which the nav bar will be used to navigate between
List<String> appBarTitle = [
  'Discover',
  'Favorites',
  'Trending',
  'Profile',
];

bool _isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 960.0;
}

bool _isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 640.0;
}

/// Home screens include the bottom nav bar
class HomeScreen extends StatelessWidget {
  /// Home screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTabIndexCubit, HomeTabIndexState>(
      builder: (context, state) {
        return AdaptiveScaffold(
          currentIndex: state.tabIndex,
          destinations: const [
            AdaptiveScaffoldDestination(
              title: 'Discover',
              icon: Icons.explore_rounded,
            ),
            AdaptiveScaffoldDestination(
              title: 'Favorites',
              icon: Icons.favorite_rounded,
            ),
            AdaptiveScaffoldDestination(
              title: 'Trending',
              icon: Icons.local_fire_department_rounded,
            ),
            AdaptiveScaffoldDestination(
              title: 'Profile',
              icon: Icons.person_rounded,
            ),
          ],
          body: screens[state.tabIndex],
          onNavigationIndexChange: (value) =>
              context.read<HomeTabIndexCubit>().changeTab(value),
        );
      },
    );
  }
}

/// See bottomNavigationBarItem or NavigationRailDestination
class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;

  const AdaptiveScaffoldDestination({
    required this.title,
    required this.icon,
  });
}

/// A widget that adapts to the current display size, displaying a [Drawer],
/// [NavigationRail], or [BottomNavigationBar]. Navigation destinations are
/// defined in the [destinations] parameter.
class AdaptiveScaffold extends StatefulWidget {
  final String? title;
  final List<Widget> actions;
  final Widget? body;
  final int currentIndex;
  final List<AdaptiveScaffoldDestination> destinations;
  final ValueChanged<int> onNavigationIndexChange;
  final FloatingActionButton? floatingActionButton;

  const AdaptiveScaffold({
    this.title,
    this.body,
    this.actions = const [],
    required this.currentIndex,
    required this.destinations,
    required this.onNavigationIndexChange,
    this.floatingActionButton,
    super.key,
  });

  @override
  State<AdaptiveScaffold> createState() => _AdaptiveScaffoldState();
}

class _AdaptiveScaffoldState extends State<AdaptiveScaffold> {
  @override
  Widget build(BuildContext context) {
    // Show a Drawer
    if (_isLargeScreen(context)) {
      return Row(
        children: [
          Drawer(
            child: Column(
              children: [
                for (var d in widget.destinations)
                  ListTile(
                    leading: Icon(d.icon),
                    title: Text(d.title),
                    selected:
                        widget.destinations.indexOf(d) == widget.currentIndex,
                    onTap: () => _destinationTapped(d),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                actions: widget.actions,
              ),
              body: widget.body,
              floatingActionButton: widget.floatingActionButton,
            ),
          ),
        ],
      );
    }

    // Show a navigation rail
    if (_isMediumScreen(context)) {
      return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: widget.destinations[widget.currentIndex].title,
        ),
        body: Row(
          children: [
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height),
                child: IntrinsicHeight(
                  child: NavigationRail(
                    destinations: [
                      ...widget.destinations.map(
                        (d) => NavigationRailDestination(
                          icon: Icon(d.icon),
                          label: Text(d.title),
                        ),
                      ),
                    ],
                    selectedIndex: widget.currentIndex,
                    onDestinationSelected: widget.onNavigationIndexChange,
                  ),
                ),
              ),
            ),
            Expanded(
              child: widget.body!,
            ),
          ],
        ),
      );
    }

    // Show a bottom app bar
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: widget.body,
      appBar: CustomAppBar(
        title: widget.destinations[widget.currentIndex].title,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.darkerBgColor.withOpacity(0.7),
        selectedIndex: widget.currentIndex,
        onDestinationSelected: (value) => widget.onNavigationIndexChange(value),
        destinations: <NavigationDestination>[
          ...widget.destinations.map(
            (d) => NavigationDestination(
              icon: Icon(d.icon),
              label: d.title,
            ),
          ),
        ],
      ),
    );
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    var idx = widget.destinations.indexOf(destination);
    if (idx != widget.currentIndex) {
      widget.onNavigationIndexChange(idx);
    }
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkerBgColor.withOpacity(0.7),
      elevation: 0,
      title: Text(
        title,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
