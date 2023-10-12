import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  static List<String> sayilar = [];
  var toplam = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap makinesi"),
      ),
      body: Column(
        children: [
          Text("$toplam "),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayilar.add("1");
                    });
                  },
                  child: const Text("1")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayilar.add("2");
                    });
                  },
                  child: const Text("2")),
              ElevatedButton(onPressed: () {}, child: const Text("3")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("4")),
              ElevatedButton(onPressed: () {}, child: const Text("5")),
              ElevatedButton(onPressed: () {}, child: const Text("6")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("7")),
              ElevatedButton(onPressed: () {}, child: const Text("8")),
              ElevatedButton(onPressed: () {}, child: const Text("9")),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      sayilar.add("+");
                    });
                  },
                  child: const Text("0")),
              ElevatedButton(onPressed: () {}, child: const Text("+")),
              ElevatedButton(
                  onPressed: () {
                    for (var i = 0; i < sayilar.length; i++) {
                      if (sayilar[i] == "+") {
                      } else {
                        int gecici = int.parse(sayilar[i]);

                        setState(() {
                          toplam += gecici;
                        });
                      }
                    }
                  },
                  child: const Text("=")),
            ],
          ),
        ],
      ),
    );
  }
}
