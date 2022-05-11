import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_flutter_modular/app/core/style/colors.dart';
import 'package:spotify_flutter_modular/app/core/style/size.dart';
import 'package:spotify_flutter_modular/app/core/style/text.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/components/recently_played/recently_played_card.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/components/recently_played/recentry_played.dart';
import 'package:spotify_flutter_modular/app/modules/home/components/usage_flow/components/suggestions/suggestions.dart';
import './usage_flow_controller.dart';

class UsageFlowPage extends StatefulWidget {

  const UsageFlowPage({ 
    Key? key,
  });

  @override
  State<UsageFlowPage> createState() => _UsageFlowPageState();
}

class _UsageFlowPageState extends ModularState<UsageFlowPage, UsageFlowController> {
    @override
    Widget build(BuildContext context) {
        return Column(
      children: [

        // Container(
        //   height: height(context, .3),
        //   margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
        //   color: Color.fromARGB(255, 218, 78, 68),
        //   child: Column(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           alignment: Alignment.centerLeft,
        //           width: widthAll(context),
        //           color: Colors.purple,
        //           child: Text('data'),
        //         ),
        //       ),
        //       Expanded(
        //         flex: 2,
        //         child: Container(
        //           alignment: Alignment.center,
        //           width: widthAll(context),
        //           color: Color.fromARGB(255, 124, 29, 141),
        //           child: Text('data'),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        Container(
          height: height(context, .35),
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: width(context, .8),
                  child: Text(
                    'Programas que talvez você curta',
                    style: textTitleBold(22, white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: widthAll(context),
                  child: Observer(
                    builder: (context) {
                      return Suggestions();
                    }
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
          height: height(context, .3),
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: width(context, .8),
                  child: Text(
                    'Tocadas recentemente',
                    style: textTitleBold(22, white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: widthAll(context),
                  child: Observer(
                    builder: (_) {
                      return RecentryPlayed();
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}