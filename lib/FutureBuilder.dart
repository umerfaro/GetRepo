import 'package:flutter/material.dart';

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {


  Future<DateTime> getData() async{
  await Future.delayed(Duration(seconds: 2));
   return DateTime.now() ;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Column(

        children: [
          TextButton(onPressed: (){
            getData();
            setState(() {

            });
          }, child: Text('Click me')),
          FutureBuilder(
            future: getData(),
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.waiting)
                {
                  return CircularProgressIndicator();
                }
              else if(snapshot.connectionState==ConnectionState.done||
                  snapshot.connectionState==ConnectionState.active)
              {
                 if( snapshot.hasData)
                {
                  return Text(snapshot.data.toString());

                }else if(snapshot.hasError)
                  {
                    return Text(snapshot.error.toString());
                  }
                else
                  {
                    return Text('Error');
                  }
              }
              else
                {
                  return Text(snapshot.connectionState.toString());
                }
              },
          )
        ],
      ),
    );
  }
}
