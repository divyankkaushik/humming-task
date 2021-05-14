import 'package:humming_task/feature/screens/homescreen/home_screen.dart';
import 'package:humming_task/feature/screens/homescreen/widgets/widget.dart';
import 'package:humming_task/feature/screens/profilescreen/profile.dart';
import 'package:humming_task/feature/screens/videosscreen/videos_screen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200.0,
            color: AppColors.primaryColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 40.0),
                HomeText(
                  string: "Home",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  height: 40.0,
                  color: Colors.black,
                ),
                HomeText(
                  string: "Videos",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => VideosScreen(),
                      ),
                    );
                  },
                ),
                Divider(
                  height: 40.0,
                  thickness: 1.5,
                  color: Colors.black54,
                ),
                HomeText(
                  string: "Profile",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeText extends StatelessWidget {
  HomeText({Key key, this.string, this.onPressed}) : super(key: key);

  final String string;
  final TextStyle style =
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            string,
            style: style,
          ),
        ),
      ),
    );
  }
}
