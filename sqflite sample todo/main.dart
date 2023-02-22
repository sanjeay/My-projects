import 'package:flutter/material.dart';
import 'package:sqlite/sqflite%20sample%20todo/screen%202.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Sqflite(),
  ));
}

class Sqflite extends StatefulWidget {
  const Sqflite({super.key});

  @override
  State<Sqflite> createState() => _SqfliteState();
}

class _SqfliteState extends State<Sqflite> {
  bool loading = true;
  List<Map<String, dynamic>> datas = [];

  void createdata() async {
    final data = await Sqloperations.getitems();
    setState(() {
      datas = data;
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    createdata();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sqflite"),
        backgroundColor: Colors.yellow,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(datas[index]['title']),
                  subtitle: Text(datas[index]['description']),
                  trailing: Row(
                    children: [
                      IconButton(onPressed: (){
                        ()=>showform(datas[index]['id']);
                      }, icon: const Icon(Icons.edit,color: Colors.yellow,)),
                      const SizedBox(width: 10,),
                      IconButton(onPressed: ()=>deleteitem(datas[index]['id']), icon: Icon(Icons.delete,color: Colors.yellow,))
                    ],
                  ),
                ),
              );
            }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showform(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final titlecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();

  void showform(int? id) async {
    if (id != null) {
      final existingdata = datas.firstWhere((element) => element['id'] == id);
      titlecontroller.text = existingdata['title'];
      descriptioncontroller.text = existingdata['description'];
    }
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: titlecontroller,
                      decoration: const InputDecoration(hintText: "title"),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    child: TextField(
                      controller: descriptioncontroller,
                      decoration: const InputDecoration(hintText: "description"),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await additem();
                        }
                        if (id != null) {
                            await updateitem(id);
                        }
                        titlecontroller.text = "";
                        descriptioncontroller.text = '';
                        Navigator.of(context).pop();
                      },
                      child: Text(id == null ? 'create new' : 'update'))
                ],
              ),
            ));
  }

  Future<void> additem() async {
    await Sqloperations.create_item(
        titlecontroller.text, descriptioncontroller.text);
  }

 void deleteitem(int id) async{
    await Sqloperations.deleteitem(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Successfully deleted")));
 }

 Future<void>updateitem(int id)async{
    await Sqloperations.updateitem(id,titlecontroller.text,descriptioncontroller.text);
 }
}
