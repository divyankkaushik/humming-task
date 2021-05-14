import 'package:humming_task/feature/screens/videosscreen/widgets/widget.dart';

class CustomHeadlineWidget extends StatelessWidget {
  CustomHeadlineWidget({
    Key key,
    this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Container(
                width: size.width / 3.2,
                height: size.height / 11,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      imageUrl,
                    ),
                  ),
                  color: AppColors.primaryColor,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Container(
                width: size.width / 1.83,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is Heading of the reality news this and go on",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.calendar_today,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                        Text(
                          "03-03-2021",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: size.width / 5,
                          height: 20.0,
                          color: Colors.orange[900],
                          child: Center(
                            child: Text(
                              "Info",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
