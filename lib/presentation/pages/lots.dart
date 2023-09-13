import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Lots extends StatefulWidget {
  const Lots({super.key});

  @override
  State<Lots> createState() => _LotsState();
}

class _LotsState extends State<Lots> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 20;
              },
              icon: const Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: SfPdfViewer.network(
                'https://firebasestorage.googleapis.com/v0/b/lotifier.appspot.com/o/PLANO%20DE%20CONJUNTO%20PROYECTO%20PROGRESO.pdf?alt=media&token=41cb0370-e12e-4be2-859e-524f668325e1',
                key: _pdfViewerKey,
                controller: _pdfViewerController,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.transparent,
                            spreadRadius: 0,
                            blurRadius: 10),
                      ],
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Color.fromRGBO(61, 94, 57, 1),
                        collapsedTextColor: Colors.white,
                        title: Text('Primera Avenida'),
                        subtitle: Text('Ver lotes'),
                        controlAffinity: ListTileControlAffinity.trailing,
                        children: <Widget>[
                          ExpansionTile(
                            title: Text('Bloque A'),
                            subtitle: Text('Ver lotes'),
                            controlAffinity: ListTileControlAffinity.leading,
                            children: <Widget>[
                              ListTile(
                                title: Text('Lote 1'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: Text('Bloque B'),
                            subtitle: Text('Ver lotes'),
                            controlAffinity: ListTileControlAffinity.leading,
                            children: <Widget>[
                              ListTile(title: Text('This is tile number 3')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const ExpansionTile(
                    title: Text('Segunda Avenida'),
                    subtitle: Text('Ver lotes'),
                    controlAffinity: ListTileControlAffinity.trailing,
                    children: <Widget>[
                      ExpansionTile(
                        title: Text('Bloque A'),
                        subtitle: Text('Ver lotes'),
                        controlAffinity: ListTileControlAffinity.leading,
                        children: <Widget>[
                          ListTile(
                            title: Text('Lote 1'),
                            trailing: Icon(Icons.chevron_right),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: Text('Bloque B'),
                        subtitle: Text('Ver lotes'),
                        controlAffinity: ListTileControlAffinity.leading,
                        children: <Widget>[
                          ListTile(title: Text('This is tile number 3')),
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.transparent,
                            spreadRadius: 0,
                            blurRadius: 10),
                      ],
                    ),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: ExpansionTile(
                        collapsedBackgroundColor: Color.fromRGBO(61, 94, 57, 1),
                        collapsedTextColor: Colors.white,
                        title: Text('Tercera Avenida'),
                        subtitle: Text('Ver lotes'),
                        controlAffinity: ListTileControlAffinity.trailing,
                        children: <Widget>[
                          ExpansionTile(
                            title: Text('Bloque A'),
                            subtitle: Text('Ver lotes'),
                            controlAffinity: ListTileControlAffinity.leading,
                            children: <Widget>[
                              ListTile(
                                title: Text('Lote 1'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            title: Text('Bloque B'),
                            subtitle: Text('Ver lotes'),
                            controlAffinity: ListTileControlAffinity.leading,
                            children: <Widget>[
                              ListTile(title: Text('This is tile number 3')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
