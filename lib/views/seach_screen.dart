import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 62),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/image13.png'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SearchBar(
                      leading: const Icon(Icons.search),
                      hintText: 'search here',
                      hintStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset('assets/images/icon.png')
              ],
            ),
          ),
          Container(
            height: 40,
            color: Colors.grey.shade300,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                // physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    mainAxisExtent: 150),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                          height:120,width: 120,
                          decoration:BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/image15.png',
                              ),fit: BoxFit.fill
                            )
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10
                            ),
                            color: Colors.grey.shade300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text('510 CAL'),Container(
                                height: 5,
                                width: 1,
                                color: Colors.red,
                              ), Text('3 INGR')],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
