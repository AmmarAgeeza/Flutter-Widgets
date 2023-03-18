import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final List items = [];
  final GlobalKey<AnimatedListState> key = GlobalKey();

  void addItem() {
    items.insert(0, "Item ${items.length + 1}");
    key.currentState!.insertItem(0, duration: Duration(seconds: 1));
  }

  void removeItem(int index) {
    key.currentState!.removeItem(
      index,
      (BuildContext context, Animation<double> animation) => SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.red,
          child: ListTile(
            title: Text(
              'Deleted',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
        ),
      ),
      duration: const Duration(seconds: 1),
    );
    items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          IconButton(
            onPressed: addItem,
            icon: const Icon(
              Icons.add,
            ),
          ),
          Expanded(
            child: AnimatedList(
              key: key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) => SizeTransition(
                key: UniqueKey(),
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(10),
                  color: Colors.orangeAccent,
                  child: ListTile(
                    title: Text(
                      items[index],
                      style: const TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        removeItem(index);
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
