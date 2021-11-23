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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Theme.of(context).canvasColor,
      bottomNavigationBar: Container(
        color: Theme.of(context).cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "₹${catalog.price}".text.bold.xl3.red800.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      // ignore: deprecated_member_use
                      MaterialStateProperty.all(Theme.of(context).buttonColor),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
            ).pOnly(right: 8).wh(120, 50),
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
                    color: Theme.of(context).cardColor,
                    child: Column(
                      children: [
                        catalog.name.text.xl3
                            // ignore: deprecated_member_use
                            .color(Theme.of(context).accentColor)
                            .bold
                            .make(),
                        catalog.desc.text.lg.caption(context).make(),
                        "       Door bird has so floor on spoken seraphim though, surcease betook the my land. Floating thee is stillness faintly, velvet thy ghastly with devil clasp, gloating the seat there on, perfumed to tell word nights sure and so sainted, respiterespite."
                            .text
                            .make()
                            .p16()
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
