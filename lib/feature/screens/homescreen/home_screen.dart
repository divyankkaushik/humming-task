import 'package:humming_task/feature/screens/homescreen/widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      drawer: HomeDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CustomHeadlineWidget(index: index,);
        },
        itemCount: 5,
      ),
    );
  }
}

