import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/commons/color.dart';
import 'package:ppdb_pangkalpinang/src/components/data/data_perzona_smp.dart';



class DaftarZonaSMP extends StatefulWidget {
  const DaftarZonaSMP({Key? key}) : super(key: key);

  @override
  State<DaftarZonaSMP> createState() => _DaftarZonaSMPState();
}

class _DaftarZonaSMPState extends State<DaftarZonaSMP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              title: Text('PERZONA SMP',style: TextStyle(color: ColorPallete.blackPurple,fontWeight: FontWeight.w900,fontSize: 24)),
              centerTitle: true,
              leading: IconButton(onPressed:() {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: ColorPallete.black100,)),
              expandedHeight: 70,
              toolbarHeight: 60,
              elevation: 4,
              backgroundColor: Colors.white,
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.only(left: 24,right: 24,top: 16,bottom: 4),
                child: Center(
                  child: Text('Sebelum melakukan pendaftaran silakan cek sekolah tempat anda mendaftar, sekolah tempat anda mendaftar harus masuk zona sesuai kecamatan tempat tinggal anda pada Kartu Keluarga.',style: TextStyle(color: ColorPallete.black80,fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 20,bottom:40,right: 20,left: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    List<Widget> rows = [];
                    List<Widget> cells = [];
                    List listZonaSMP = itemDataZonaSMP[index].isiBody;
                    int isiBodyCount = itemDataZonaSMP[index].isiBody.length;
                    for (int i = 0; i < isiBodyCount; i++) {
                        cells.add(
                          Text('- ${listZonaSMP[i]}',style: TextStyle(color: ColorPallete.black80,fontSize: 12,fontWeight: FontWeight.w400),)
                        );
                    }
                    rows.add(Column(children: cells,));
                    return ExpandableNotifier(
                      child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:8),
                      child: ScrollOnExpand(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorPallete.whiteColor,
                            boxShadow: [BoxShadow(offset: const Offset(0,4),blurRadius: 12,spreadRadius: 0,color: ColorPallete.black20.withOpacity(0.6))],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color:ColorPallete.lightBlue,width: 1)
                          ),
                          child: Column(
                            children: <Widget>[
                              ExpandablePanel(
                                theme: const ExpandableThemeData(
                                  tapBodyToExpand: true,
                                  tapBodyToCollapse: true,
                                  hasIcon: false,
                                ),
                                header: Container(
                                  decoration: BoxDecoration(
                                    color: ColorPallete.thinBlue,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Text(
                                              itemDataZonaSMP[index].title,
                                              style: TextStyle(color: ColorPallete.black100)
                                            ),
                                          ),
                                        ),
                                        ExpandableIcon(
                                          theme: ExpandableThemeData(
                                            iconPlacement: ExpandablePanelIconPlacement.right,
                                            iconColor: ColorPallete.lightBlue,
                                            iconSize: 28.0,
                                            iconPadding: const EdgeInsets.only(right: 5),
                                            hasIcon: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                collapsed: Container(),
                                expanded: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                  child: Column(children: rows),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
                  },
                  childCount: itemDataZonaSMP.length,
                ),
              ),
            ),
            // SliverPadding(
            //   padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40,top: 40),
            //   sliver: 
            // ),
          ],
        ),
    );

  }
}