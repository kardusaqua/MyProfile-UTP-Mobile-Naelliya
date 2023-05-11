import 'package:flutter/material.dart';
import 'package:utp_mobile/WelcomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utp_mobile/PortoProfil.dart';

class PortoProfil extends StatefulWidget {
  const PortoProfil({Key? key}) : super(key: key);

  @override
  State<PortoProfil> createState() => _PortoProfil();
}

class _PortoProfil extends State<PortoProfil> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    var boldtipe =
        GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500);

    var lighttipe = GoogleFonts.poppins(
      fontSize: 14.0,
    );

    var greytipe = GoogleFonts.poppins(fontSize: 14.0, color: Colors.grey);

    var rowtipe = GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Color(0xff2d3447),
    );

    return Scaffold(
      backgroundColor: Color(0xff2d3447),
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
        ],
        elevation: 10,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Index) {
          setState(() {
            myIndex = Index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Project'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'Reward'),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(12, 20, 12, 0),
            margin: EdgeInsets.fromLTRB(50, 100, 50, 0),
            height: 320,
            width: 600,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('asset/foto_profil.png'),
                ),
                const SizedBox(height: 8),
                Text(
                  'Naelliya Kamal Mahrani',
                  style: boldtipe,
                ),
                const SizedBox(height: 3),
                Text(
                  '085021014',
                  style: boldtipe,
                ),
                const Divider(
                  height: 8,
                  color: Color(0xff2d3447),
                ),
                const SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Text(
                      'Universitas',
                      style: greytipe,
                    ),
                    Spacer(),
                    Text(
                      'Universitas Pakuan',
                      style: lighttipe,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Fakultas',
                      style: greytipe,
                    ),
                    Spacer(),
                    Text(
                      'Sekolah Vokasi',
                      style: lighttipe,
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Prodi',
                      style: greytipe,
                    ),
                    Spacer(),
                    Text(
                      'Manajemen Informatika',
                      style: lighttipe,
                    ),
                  ],
                ),
                SizedBox(height: 27),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(Icons.email_outlined),
                      Text(
                        '  naellxxlya@gmail.com',
                        style: rowtipe,
                      ),
                      Spacer(),
                      Icon(Icons.call),
                      Text('  0895-xxxx-xx02', style: rowtipe),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
