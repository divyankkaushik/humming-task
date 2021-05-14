import 'package:humming_task/feature/screens/profilescreen/widgets/widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      drawer: HomeDrawer(),
      body: Column(
        children: [
          Container(
            height: 200.0,
            width: double.infinity,
            color: Colors.grey[300],
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.orangeCO0lor,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://static.toiimg.com/thumb/imgsize-127241,msid-82594356,width-400,resizemode-4/82594356.jpg",
                    ),
                    radius: 47,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Dinesh Yaduvanshi",
                  style: TextStyle(
                      color: AppColors.orangeCO0lor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 100,
                  height: 20.0,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: AppColors.orangeCO0lor),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          profileColumn("Location", "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
          profileColumn("Pincode", "xxxxxxx"),
          profileColumn("Date of Birth", "dd-mm-yy"),
          profileColumn("Gender", "Male"),
          profileColumn("Whatsapp", "+91-xxxxxxxxxx"),
          ProfileHeadingText(string: "Email"),
          SizedBox(height: 10.0,),
          ProfileSubHeading(subText: "xxxxxxxxxxxxxxx@gmail.com"),
        ],
      ),
    );
  }

  Column profileColumn(String text, String subText) {
    return Column(
      children: [
        ProfileHeadingText(
          string: text,
        ),
        SizedBox(
          height: 10.0,
        ),
        ProfileSubHeading(
          subText: subText,
        ),
        divider()
      ],
    );
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: Divider(
        height: 20.0,
        color: Colors.grey[600],
      ),
    );
  }
}

class ProfileSubHeading extends StatelessWidget {
  const ProfileSubHeading({Key key, this.subText}) : super(key: key);

  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 60.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          subText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class ProfileHeadingText extends StatelessWidget {
  ProfileHeadingText({Key key, this.string, this.onPressed}) : super(key: key);

  final String string;
  final TextStyle style = TextStyle(fontSize: 18.0, color: Colors.grey);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          string,
          style: style,
        ),
      ),
    );
  }
}
