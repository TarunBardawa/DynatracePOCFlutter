import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, this.imageUrl, this.name, required this.onTapItem, this.index, this.avatar}) : super(key: key);
  final String? imageUrl;
  final String? avatar;
  final String? name;
  final Function onTapItem;
  final int? index;

  void onTap() {
    onTapItem(index);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 234, 173),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          avatar ?? '',
                          fit: BoxFit.fill,
                          height: 40,
                          width: 40,
                        )),
                  ),
                  const SizedBox(width: 8.0,),
                  Text(name ?? '', style: const TextStyle(fontSize: 16, ),)
                ],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
              child: Image.network(
                imageUrl ?? '',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
