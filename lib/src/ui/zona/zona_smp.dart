import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/commons/color.dart';
import 'package:ppdb_pangkalpinang/src/components/data/data_zona_smp.dart';
import 'package:ppdb_pangkalpinang/src/components/my_list.dart';
import 'package:ppdb_pangkalpinang/src/components/my_list_nav.dart';
import 'package:ppdb_pangkalpinang/src/ui/jalur_pendaftaran/jalur_pendaftaran_smp.dart';
import 'package:url_launcher/url_launcher.dart';

class ZonaSmp extends StatefulWidget {
  const ZonaSmp({Key? key}) : super(key: key);

  @override
  State<ZonaSmp> createState() => _ZonaSmpState();
}

void _launchURL(url) async {
  if (!await launch(url)) throw 'Chould not launch $url';
}

class _ZonaSmpState extends State<ZonaSmp> {
  final _urlEbbok =
      'https://ppdb.pangkalpinangkota.go.id/MANUAL_BOOK%20PPDB_ONLINE_DIKBUD_2021.pdf';
  final _urlVideo = 'https://www.youtube.com/watch?v=QXhxSxljiZc';
  final _pendaftar = 'https://ppdb.pangkalpinangkota.go.id/smppkpsatu/seleksi/';
  @override
  Widget build(BuildContext context) {
    final double screenW = MediaQuery.of(context).size.width;
    final double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            title: Text('ZONA SMP',
                style: TextStyle(
                    color: ColorPallete.blackPurple,
                    fontWeight: FontWeight.w700,
                    fontSize: 24)),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: ColorPallete.black100,
                )),
            expandedHeight: 70,
            toolbarHeight: 60,
            elevation: 4,
            backgroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 16, bottom: 4),
              child: Center(
                child: Text(
                  'Pilih Sesuai Kecamatan Tempat Tinggal Anda di Kartu Keluarga.',
                  style: TextStyle(
                      color: ColorPallete.black80,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 8, bottom: 30),
              child: Column(children: [
                MylistInfo(
                  icon: Icons.video_collection_rounded,
                  text: 'Panduan Video PPDB 2022',
                  onPress: _urlVideo,
                ),
                MylistInfo(
                  icon: Icons.menu_book,
                  text: 'Panduan Manual Book PPDB SMP',
                  onPress: _urlEbbok,
                ),
                // MylistInfoNav(icon: Icons.app_registration, text: 'Pilih Jalur Pendaftaran SMP',onPress: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const JalurSmp()),
                //   );
                // },),
              ]),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 24,
                  childAspectRatio: screenW / (screenH / 1.5)),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: ColorPallete.whiteColor,
                        border:
                            Border.all(color: ColorPallete.lightBlue, width: 2),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 16,
                              spreadRadius: 0,
                              offset: const Offset(0, 4),
                              color: ColorPallete.black40.withOpacity(0.5))
                        ],
                        borderRadius: BorderRadius.circular(16)),
                    child: TextButton(
                      onPressed: () async {
                        _launchURL(listZonaSmp[index].link);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 52,
                              width: 52,
                              child: Image.asset('assets/images/school.png'),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(listZonaSmp[index].title,
                                style: TextStyle(
                                    color: ColorPallete.black100,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(listZonaSmp[index].kecamatan,
                                style: TextStyle(
                                    color: ColorPallete.black60,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                  );
                },
                childCount: 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
