import 'package:flutter/material.dart';
import 'package:ppdb_pangkalpinang/src/commons/color.dart';
import 'package:ppdb_pangkalpinang/src/components/my_list_nav.dart';
import 'package:ppdb_pangkalpinang/src/ui/daftar_sekolah/sd.dart';
import 'package:ppdb_pangkalpinang/src/ui/daftar_sekolah/smp.dart';
import 'package:ppdb_pangkalpinang/src/ui/informasi/jadwal.dart';
import 'package:ppdb_pangkalpinang/src/ui/zona/zona_sd.dart';
import 'package:ppdb_pangkalpinang/src/ui/zona/zona_smp.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40,bottom: 16),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'PPDB Kota Pangkalpinang Tahun 2022',
                  style: TextStyle(color: ColorPallete.blackPurple,fontSize: 24,fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(child: Image.asset('assets/images/hero.png')),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 0,top: 24),
                width: double.infinity,
                child: Text('Pilih Zona Wilayahmu',style: TextStyle(color: ColorPallete.black100,fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.left,),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorPallete.whiteColor,
                          border: Border.all(color: ColorPallete.lightBlue,width: 2),
                          boxShadow: [BoxShadow(blurRadius: 16,color: ColorPallete.black20,offset: const Offset(0,4),spreadRadius: 0)]
                        ),
                        child: TextButton(
                          onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const ZonaSD()),);}, 
                          child: Column(
                            children: [
                              const SizedBox(height:16),
                              SizedBox(height:80,child: Image.asset('assets/images/sd.png')),
                              const SizedBox(height:8),
                              Text('Zona SD',style: TextStyle(color: ColorPallete.black100,fontWeight: FontWeight.w600,fontSize: 16),),
                              const SizedBox(height:24),
                            ],
                          ),
                      
                        )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4,vertical: 24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorPallete.whiteColor,
                          border: Border.all(color: ColorPallete.lightBlue,width: 2),
                          boxShadow: [BoxShadow(blurRadius: 16,color: ColorPallete.black20,offset: const Offset(0,4),spreadRadius: 0)]
                        ),
                        child: TextButton(
                          onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const ZonaSmp()),);},
                          child: Column(
                            children: [
                              const SizedBox(height:16),
                              SizedBox(height:80,child: Image.asset('assets/images/smp.png')),
                              const SizedBox(height:8),
                              Text('Zona SMP',style: TextStyle(color: ColorPallete.black100,fontWeight: FontWeight.w600,fontSize: 16),),
                              const SizedBox(height:24),
                            ],
                          ),
                      
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.only(bottom: 16,top: 32),
                width: double.infinity,
                child: Text('Informasi Lainnya',style: TextStyle(color: ColorPallete.black100,fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.left,),
              ),
              MylistInfoNav(icon: Icons.date_range, text: 'Jadwal PPDB Online 2022',onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Jadwal()),
                    );
                  },),
              MylistInfoNav(icon: Icons.list_alt,text: 'Daftar Sekolah Perzona SD',onPress: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DaftarZonaSD()),
                    );
                  },),
              MylistInfoNav(icon: Icons.list_alt, text: 'Daftar Sekolah Perzona SMP',onPress: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DaftarZonaSMP()),
                    );
                  },),
            ],
          ),
        ),
      ),
    );
  }
}

