import 'package:flutter/material.dart';
import 'package:tugas6/main.dart';
import 'package:tugas6/detailPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Explore Wisata'),
          leading: Icon(Icons.explore),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.grid_on),
                text: 'Grid View',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'List View',
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            tampilanGridView(),
            tampilanListView()
          ]
        ),
      )
    );
  }
}

void bukaHalamanDetail(BuildContext context, Map<String, String> item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => DetailPage(item: item),
    ),
  );
}

Widget areaKlik(BuildContext context, Map<String, String> item) {
  return Positioned.fill(
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => bukaHalamanDetail(context, item),
      ),
    ),
  );
}

Widget tampilanGridView(){
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12
    ),
    padding: EdgeInsets.all(20),
    itemCount: dataWisata.length,
    itemBuilder: (context, index) {
      final item = dataWisata[index];
      return Card(
        elevation: 2,
        clipBehavior: .antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(20),
          side: BorderSide(color: Colors.black)
        ),
        child: Stack(
          fit: .expand,
          children: [
            Image.network(
              item['gambar']!,
              fit: .cover,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Text(
                      item['nama']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      item['lokasi']!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ),
            areaKlik(context, item),
          ],
        ),
      );
    },
  );
}

Widget tampilanListView(){
  return ListView.builder(
    padding: EdgeInsets.all(20),
    itemCount: dataWisata.length,
    itemBuilder: (context, index) {
      final item = dataWisata[index];
      return Card(
        elevation: 2,
        margin: EdgeInsets.only(bottom: 16),
        clipBehavior: .antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(20)
        ),
        child: Stack(
          children: [
            Image.network(
              item['gambar']!,
              height: 220,
              width: double.infinity,
              fit: .cover,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  children: [
                    Text(
                      item['nama']!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .bold
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      item['lokasi']!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ),
            areaKlik(context, item),
          ],
        ),
      );
    },
  );
}