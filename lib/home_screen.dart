import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_context.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Provider.of<AppContext>(context, listen: false).initializeContext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ISA Image Encryption"
        ),
        actions: [

        ],
      ),
      resizeToAvoidBottomInset: false,
      body: ScreenAdapter(
          child: Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                HomeScreenDonkeyLogo(),
                SizedBox(
                  height: 10.0,
                ),
                HomeScreenMessageLogo(),
                SizedBox(
                  height: 5.0,
                ),
                HomeScreenStartEncodeBtn(),
                SizedBox(
                  height: 5.0,
                ),
                HomeScreenStartDecodeBtn(),
                SizedBox(
                  height: 5.0,
                ),
                HomeScreenContribBtn(),
              ],
            ),
          )),
    );
  }
}
