import 'package:flutter/material.dart';

import 'Tela02.dart';

Widget menuDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          width: double.infinity,
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2023/04/27/10/22/cat-7954262_640.jpg"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Pedro Balestra",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const Text(
                  "pedro.balestra@outlook.com",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text("Perfil"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.arrow_circle_right_outlined),
          title: const Text("Tela02"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Tela02()));
          },
        )
      ],
    ),
  );
}
