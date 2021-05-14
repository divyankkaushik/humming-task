import 'package:humming_task/feature/screens/homescreen/widgets/widget.dart';

class CustomHeadlineWidget extends StatelessWidget {
  CustomHeadlineWidget({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  final List<String> imageUrl = [
    "https://static.toiimg.com/thumb/imgsize-127241,msid-82594356,width-400,resizemode-4/82594356.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/800px-BBC_News_2019.svg.png",
    "https://www.wsls.com/resizer/8813eFAvlKCfMTZsxvpD9cQTnCA=/640x360/smart/filters:format(jpeg):strip_exif(true):strip_icc(true):no_upscale(true):quality(65):fill(FFF)/arc-anglerfish-arc2-prod-gmg.s3.amazonaws.com/public/QWXGJNBGNJBC3OMC7S56FH7TUY.png",
    "https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/blog_article/public/blog/csm-blog/breaking-news-blog-1138x658-1.jpg",
    "https://images.thequint.com/thequint%2F2021-03%2F1e83dd1d-e46d-4575-ab26-90fa976413b3%2Fthequint_2019_02_abeb5d74_77eb_4db7_a8fd_ede12fb48954_960bccb1_e548_4c54_b6bc_329d84d5dd4e.jpg"
  ];

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
                height: size.width / 2.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        imageUrl[index],
                      ),
                    ),
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
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
                      height: 5.0,
                    ),
                    Text(
                      "This is Heading of the reality news this and go on",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
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
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: size.width / 6.0,
                          height: 20.0,
                          color: Colors.orange[900],
                          child: Center(
                            child: Text(
                              "Sports",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.bookmark_border,
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
