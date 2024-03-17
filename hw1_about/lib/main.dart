import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Pokeballs extends StatelessWidget {
  const Pokeballs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: -45 * 3.1415926 / 180,
              child: Image.asset('assets/pokeball.png', width: 32),
            ),
            Transform.rotate(
              angle: 45 * 3.1415926 / 180,
              child: Image.asset('assets/pokeball.png', width: 32),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: -135 * 3.1415926 / 180,
              child: Image.asset('assets/pokeball.png', width: 32),
            ),
            Transform.rotate(
              angle: 135 * 3.1415926 / 180,
              child: Image.asset('assets/pokeball.png', width: 32),
            ),
          ],
        ),
      ],
    );
  }
}

class Pikachu extends StatelessWidget {
  const Pikachu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.0,
          child: PageView(
            children: [
              Image.asset('assets/260px-025Pikachu.png'),
              Image.asset('assets/260px-025Pikachu-Pop_Star.png'),
              Image.asset('assets/260px-025Pikachu-Original.png'),
              Image.asset('assets/260px-025Pikachu-Gigantamax.png'),
            ],
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.arrow_right,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  '皮卡丘（日文︰ピカチュウ，英文︰Pikachu）是電屬性寶可夢。',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PikachuDescription extends StatelessWidget {
  const PikachuDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: const Text(
        '皮卡丘是一隻電氣鼠，全身的皮毛都是黃色的，背上有兩條褐色的條紋，尾巴是像鋸齒狀的閃電，與身體相接的部分也有一片褐色的皮毛。它有小小的嘴巴，以及黑色的眼睛，臉頰上有著紅色的電力袋，長長的耳朵尖端是黑色的。牠的前爪短而粗，有五趾，後爪則只有三趾。越是能製造出強大電流的皮卡丘，臉頰上的囊就越柔軟，同時也越有伸展性。由於它臉頰上的袋子中儲存了電能，觸摸了之後會覺得麻麻的。它跑動的時候是用四條腿著地快速地奔跑，但是更多時候牠是站立著的並用兩隻後腳走路。雌性皮卡丘的尾巴末端為心形，而雄性的則沒有缺口。不同地區的皮卡丘在皮毛光澤上有細微差異。關都地區的皮卡丘在陽光下有星星點點的細小光斑，而阿羅拉地區的皮卡丘則皮毛潤澤。在大量出現中！皮卡丘山谷!!中，皮卡菈通過這一特點認出小智的皮卡丘來自關都地區。',
        style: TextStyle(fontSize: 14.0),
      ),
    );
  }
}

class AnimatedPikachu extends StatelessWidget {
  const AnimatedPikachu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Icon(
              Icons.arrow_drop_down,
            ),
            Text(
              '動畫的皮卡丘',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.asset('assets/1.png', height: 100),
              const SizedBox(width: 10),
              Image.asset('assets/2.png', height: 100),
              const SizedBox(width: 10),
              Image.asset('assets/3.png', height: 100),
              const SizedBox(width: 10),
              Image.asset('assets/4.png', height: 100),
              const SizedBox(width: 10),
              Image.asset('assets/5.png', height: 100),
              const SizedBox(width: 10),
              Image.asset('assets/6.png', height: 100),
            ],
          ),
        ),
      ],
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      appBar: AppBar(
        title: const Text('皮卡丘'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black45,
            width: 5.0,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(blurRadius: 10),
          ],
          color: Colors.white,
        ),
        child: const Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Pikachu(),
                  Divider(
                    thickness: 2,
                    height: 10,
                    indent: 30,
                    endIndent: 30,
                  ),
                  PikachuDescription(),
                  SizedBox(height: 16),
                  AnimatedPikachu(),
                  SizedBox(height: 16),
                  StatBuilder(),
                ],
              ),
            ),
            Pokeballs(),
          ],
        ),
      ),
    );
  }
}

class StatBuilder extends StatelessWidget {
  const StatBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '能力值範圍',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: StatRow(
                  name: 'HP:',
                  color: Colors.green,
                  lv50Range: '95 - 142',
                  lv100Range: '180 - 274',
                  baseValue: 35,
                ),
              ),
              Expanded(
                child: StatRow(
                  name: '攻擊:',
                  color: Colors.orange,
                  lv50Range: '54 - 117',
                  lv100Range: '103 - 229',
                  baseValue: 55,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: StatRow(
                  name: '防禦:',
                  color: Colors.blue,
                  lv50Range: '40 - 101',
                  lv100Range: '76 - 196',
                  baseValue: 40,
                ),
              ),
              Expanded(
                child: StatRow(
                  name: '特攻:',
                  color: Colors.indigo,
                  lv50Range: '49 - 112',
                  lv100Range: '94 - 218',
                  baseValue: 50,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: StatRow(
                  name: '特防:',
                  color: Colors.purple,
                  lv50Range: '49 - 112',
                  lv100Range: '94 - 218',
                  baseValue: 50,
                ),
              ),
              Expanded(
                child: StatRow(
                  name: '速度:',
                  color: Colors.pink,
                  lv50Range: '85 - 156',
                  lv100Range: '166 - 306',
                  baseValue: 90,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  const StatRow({
    super.key,
    required this.name,
    required this.color,
    required this.lv50Range,
    required this.lv100Range,
    required this.baseValue,
  });

  final String name;
  final Color color;
  final String lv50Range;
  final String lv100Range;
  final int baseValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 16.0,
              height: 16.0,
              color: color,
            ),
            const SizedBox(width: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              baseValue.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          'Lv.50: $lv50Range',
          style: const TextStyle(fontSize: 12.0),
        ),
        Text(
          'Lv.100: $lv100Range',
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
