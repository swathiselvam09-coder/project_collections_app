import 'package:flutter/material.dart';
import 'package:project_collections_app/widgets/collection_card_.dart';
import '../models/collection.dart';



final List<Collection> collections = [
  Collection(
    
    title: "Collection 1",
    
    images: [
      "https://picsum.photos/200/300?1",
      "https://picsum.photos/200/300?2",
      "https://picsum.photos/200/300?3",
      "https://picsum.photos/200/300?4",
      "https://picsum.photos/200/300?5",
    ],
  ),
  Collection(
    title: "Collection 2",
    images: [
      "https://picsum.photos/200/300?6",
      "https://picsum.photos/200/300?7",
      "https://picsum.photos/200/300?8",
      
    ],
  ),
  Collection(title: "Collection 3",
   images: [
    
  

   ])
];

class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({super.key});

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  int expandedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Collections"),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),

      body: ListView.builder(
        itemCount: collections.length,
        itemBuilder: (context, index) {
          return CollectionCard(
            collection: collections[index],
            isExpanded: expandedIndex == index,
            onTap: () {
              setState(() {
                expandedIndex =
                    expandedIndex == index ? -1 : index;
              });
            },
          );
        },
      ),
    );
  }
}
