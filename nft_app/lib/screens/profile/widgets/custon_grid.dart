import 'package:flutter/material.dart';
import 'package:nft_app/models/art.dart';
import '../../detail/detail.dart';

class CustomGrid extends StatelessWidget {
  final String scrollkey;
  // ignore: non_constant_identifier_names
  final List<Art> ArtList;
  const CustomGrid(
    this.scrollkey,
    this.ArtList, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        itemCount: ArtList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 5,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(ArtList[index]),
              ),
            );
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Hero(
              tag: ArtList[index].imgUrl!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  ArtList[index].imgUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
