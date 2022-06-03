import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/commons/color.dart';
import 'package:ppdb_pangkalpinang/src/components/data/data_jalur_smp.dart';
import 'package:url_launcher/url_launcher.dart';

class JalurSmp extends StatefulWidget {
  const JalurSmp({Key? key}) : super(key: key);

  @override
  State<JalurSmp> createState() => _JalurSmpState();
}

void _launchURL(url) async {
    if (!await launch(url)) throw 'Chould not launch $url';
}

class _JalurSmpState extends State<JalurSmp> {
  
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
              title: Text('JALUR PENDAFTARAN SMP',style: TextStyle(color: ColorPallete.blackPurple,fontWeight: FontWeight.w700,fontSize: 18)),
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
                padding: const EdgeInsets.only(left: 40,right: 40,top: 16,bottom: 32),
                child: Center(
                  child: Text('Jalur Pendaftaran dan Persyaratan PPDB-2022 setiap jalur yang tersedia.',style: TextStyle(color: ColorPallete.black80,fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ),
              ),
            ),
            
            SliverPadding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: 40),
              sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  List<Widget> rows = [];
                  List<Widget> cells = [];
                  List<dynamic> listSmp = listJalurSmp[index].syarat;
                  int syaratCount = listJalurSmp[index].syarat.length;
                  for (int i = 0; i < syaratCount; i++) {
                      cells.add(
                        Text(listSmp[i],style: TextStyle(color: ColorPallete.black80,fontSize: 12,fontWeight: FontWeight.w400),)
                      );
                  }
                  rows.add(Column(children: cells,));
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: ColorPallete.whiteColor,
                      border: Border.all(color: ColorPallete.lightBlue,width: 2),
                      boxShadow: [BoxShadow(blurRadius: 16,spreadRadius: 0,offset: const Offset(0,4),color: ColorPallete.black40.withOpacity(0.5))],
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      ),
                      onPressed: ()async{_launchURL(listJalurSmp[index].link);} ,
                      child: Column(
                        children: [
                          Container(
                            padding:const EdgeInsets.symmetric(vertical: 8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorPallete.lightBlue,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(listJalurSmp[index].title,style: TextStyle(color: ColorPallete.black100,fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.center)
                          ),
                          const  SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Syarat-Syarat ',style: TextStyle(color: ColorPallete.black100,fontSize: 14,fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                              Text('(${syaratCount.toString()})',style: TextStyle(color: ColorPallete.greenColor,fontSize: 16,fontWeight: FontWeight.w600),textAlign: TextAlign.center),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Column(
                              //Adds the list of rows to the column
                              children: rows,
                            ),
                          )
                          
                        ],
                      ),
                    ),
                    );
                },
                childCount: listJalurSmp.length,
              ),
            ),
            ),
          ],
        ),
    );
  }
}