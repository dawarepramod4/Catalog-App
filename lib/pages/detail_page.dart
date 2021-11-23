import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/catalog.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;

  const DetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: myTheme.creamcolor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "₹${catalog.price}".text.bold.xl3.red800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(myTheme.BluishColor),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
            ).pOnly(right: 8).wh(100, 50),
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Center(child: Image.network(catalog.image)))
                .p8()
                .h32(context),
            Expanded(
              child: VxArc(
                  height: 30,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        catalog.name.text.xl3
                            .color(myTheme.BluishColor)
                            .bold
                            .make(),
                        catalog.desc.text.lg.caption(context).make(),
                      ],
                    ).pOnly(top: 64),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
