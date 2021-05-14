import 'package:humming_task/feature/screens/videosscreen/widgets/widget.dart';


class VideosScreen extends StatefulWidget {
  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  FlickManager flickManager;

  final List<String> imageUrl = [
    "https://static.toiimg.com/thumb/imgsize-127241,msid-82594356,width-400,resizemode-4/82594356.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/800px-BBC_News_2019.svg.png",
    "https://www.wsls.com/resizer/8813eFAvlKCfMTZsxvpD9cQTnCA=/640x360/smart/filters:format(jpeg):strip_exif(true):strip_icc(true):no_upscale(true):quality(65):fill(FFF)/arc-anglerfish-arc2-prod-gmg.s3.amazonaws.com/public/QWXGJNBGNJBC3OMC7S56FH7TUY.png"
  ];

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      drawer: HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Videos",
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: Container(
                height: 190,
                child: FlickVideoPlayer(flickManager: flickManager)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "This is Heading of the reality news this and go on",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Date & Time here",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "This is Heading of the reality news this is another heading of the",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Information",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
                  ),
                ),
              ),
            ),
            CustomHeadlineWidget(
              imageUrl: imageUrl[0].toString(),
            ),
            CustomHeadlineWidget(
              imageUrl: imageUrl[1].toString(),
            ),
            CustomHeadlineWidget(
              imageUrl: imageUrl[2].toString(),
            )
          ],
        ),
      ),
    );
  }
}
