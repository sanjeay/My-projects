import 'package:flutter/material.dart';
import 'package:sqlite/sqflite/screen%202.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ui(),));
}

class Ui extends StatefulWidget {
  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  bool isloading=true;
  List<Map<String,dynamic>>datasfromdatabase=[];
  void fetchdata()async{
    final data=sqloperations.gettable();
    setState(() {
      datasfromdatabase=data as List<Map<String, dynamic>>;
      isloading=false;

    });
  }
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    fetchdata();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.yellow,title: Text("sqflite"),) ,
      body: isloading?Center(child: CircularProgressIndicator()):ListView.builder(itemBuilder: (context,int)=>Card(
        child: ListTile(
          title: Text(datasfromdatabase[int]['title']),
          subtitle: Text(datasfromdatabase[int]['description']),
        ),
      )),
      floatingActionButton: FloatingActionButton(onPressed: ()=>showsheet(null),child: Icon(Icons.add),),
    );
  }
   final titlecontroller=TextEditingController();
  final descriptioncontroller=TextEditingController();
 void showsheet(int?id) {
    if(id!=null){
      final exsitingdata= datasfromdatabase.firstWhere((element) => element[id]==id);
      titlecontroller.text=exsitingdata['title'];
      descriptioncontroller.text=exsitingdata['description'];
    }
    showModalBottomSheet(context: (context), builder: (context)=>Container(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 15,
        bottom: MediaQuery.of(context).viewInsets.bottom+120
      ),
      child: Column(
        children: [
          TextField(
            controller: titlecontroller,
            decoration: InputDecoration(hintText: "title"),
          ),
          TextField(
            controller: descriptioncontroller,
            decoration: InputDecoration(hintText: "Description"),
          ),
          ElevatedButton(onPressed: () async {
            if(id==null){
              await createitem();
            }
            if(id!=null){
              //await Updateitem();
              Navigator.of(context).pop();
              titlecontroller.clear();
              descriptioncontroller.clear();
            }
          }, child: Text(id==null?'create new':'update'))
        ],
      ),
    ));
    print(datasfromdatabase);
 }

  Future<void>createitem()async{
   await sqloperations.createitem(titlecontroller.text,descriptioncontroller.text);
   fetchdata();
  }
}