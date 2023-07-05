import 'package:flutter/material.dart';

Widget menuDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          width: double.infinity,
          height: 230,
          color: Colors.blueGrey,
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/id/1406885804/pt/foto/a-shopping-cart-by-a-store-shelf-in-a-supermarket.jpg?s=2048x2048&w=is&k=20&c=0NvjL7n604WKij2dq_ZqpphnGCgdfngEg_VU68NP9XA='),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Minha lista de compras",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Desenvolvido por Pedro Balestra",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.add,
            color: Colors.blueGrey,
          ),
          title: Text(
            'Novo Produto',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.food_bank,
            color: Colors.blueGrey,
          ),
          title: Text(
            'Meus Produtos',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
