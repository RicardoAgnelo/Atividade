import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agudos do Sul Paraná'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.greenAccent, Colors.green],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CultivationScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.build),
                label: Text('Formas de Cultivo'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green, backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RotationScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.spa),
                label: Text('O que plantar'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green, backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LivestockMethodsScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.pets),
                label: Text('Formas de Pecuária'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green, backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: TextStyle(fontSize: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class LivestockMethodsScreen extends StatelessWidget {
  final List<Map<String, String>> livestockMethods = [
    {
      'name': 'Criação de Gado',
      'cost': 'Alto',
      'needs': 'A criação de gado requer pastagens adequadas para o exercício e alimentação, além de suplementação nutricional para garantir um crescimento saudável e produtivo do rebanho. A água limpa e acessível também é essencial para o bem-estar dos animais.',
      'complications': 'Entre as complicações enfrentadas na criação de gado estão doenças como a febre aftosa, que pode causar sérios impactos na saúde do rebanho e exigir medidas rigorosas de controle sanitário. Além disso, a gestão adequada do manejo de resíduos e a prevenção de parasitas são cruciais para manter a saúde dos animais.',
      'image': 'assets/images/cattle.jpg',
    },
    {
      'name': 'Criação de Galinhas',
      'cost': 'Baixo',
      'needs': 'A criação de galinhas requer um galinheiro limpo e bem ventilado, com espaço adequado para as aves se movimentarem livremente. Uma dieta balanceada, que inclua grãos, vegetais e proteínas, é essencial para garantir ovos de alta qualidade e saúde das aves.',
      'complications': 'Complicações comuns na criação de galinhas incluem infestações por ácaros e outros parasitas, que podem afetar a produção de ovos e a saúde das aves. Problemas relacionados à nutrição inadequada, como ovos de baixa qualidade ou problemas de crescimento, também podem surgir se a dieta não for cuidadosamente planejada.',
      'image': 'assets/images/chicken.jpg',
    },
    {
      'name': 'Criação de Galinhas de Angola',
      'cost': 'Médio',
      'needs': 'A criação de galinhas de angola requer um espaço amplo para que as aves possam se exercitar naturalmente. Elas precisam de uma dieta variada que inclua grãos, insetos e vegetais, além de abrigo adequado para protegê-las de predadores.',
      'complications': 'Entre as complicações estão o risco de predadores como raposas e aves de rapina, que podem atacar as galinhas de angola se não houver medidas adequadas de proteção. Além disso, doenças aviárias como a coccidiose podem ser um desafio, exigindo cuidados veterinários preventivos e manejo sanitário rigoroso.',
      'image': 'assets/images/guinea_fowl.jpg',
    },
    {
      'name': 'Criação de Porcos',
      'cost': 'Médio',
      'needs': 'A criação de porcos requer instalações limpas e bem ventiladas, com áreas adequadas para descanso e alimentação. Uma dieta balanceada, composta por grãos, verduras e suplementos ricos em nutrientes, é essencial para o crescimento saudável e eficiente dos suínos.',
      'complications': 'Complicações comuns na criação de porcos incluem problemas respiratórios, como pneumonia, que podem surgir devido a condições de habitação inadequadas. Além disso, parasitas intestinais como as lombrigas podem afetar a saúde dos porcos e prejudicar seu desenvolvimento, exigindo medidas de controle e prevenção adequadas.',
      'image': 'assets/images/pig.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agudos do Sul Paraná'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundpecuaria.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: livestockMethods.length,
            itemBuilder: (ctx, index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green, // Cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreenCultivation(details: livestockMethods[index]),
                    ),
                  );
                },
                child: Text(livestockMethods[index]['name']!),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CultivationScreen extends StatelessWidget {
 final List<Map<String, String>> cultivationMethods = [
    {
      'name': 'Plantio direto em solo fértil',
      'cost': 'Médio',
      'needs': 'Este método de plantio visa maximizar o uso do solo naturalmente fértil, minimizando a perturbação do solo. Requer um solo bem preparado, rico em nutrientes orgânicos e com boa estrutura para promover o desenvolvimento saudável das raízes das plantas. A manutenção adequada da fertilidade do solo através de práticas como a rotação de culturas também é essencial.',
      'complications': 'Entre as complicações estão o manejo de pragas e doenças que podem proliferar em solo rico em nutrientes. A compactação do solo devido ao tráfego de máquinas agrícolas também pode reduzir a porosidade do solo, afetando a infiltração de água e o desenvolvimento das raízes. O controle de ervas daninhas é outro desafio, pois elas podem competir com as culturas por nutrientes e luz solar.',
      'image': 'assets/images/solofertil.jpg',
    },
    {
      'name': 'Plantio consorciado com outras culturas',
      'cost': 'Baixo',
      'needs': 'O plantio consorciado envolve o cultivo simultâneo de diferentes espécies vegetais que se beneficiam mutuamente. Requer um planejamento cuidadoso das combinações de culturas para otimizar o uso do espaço, nutrientes e luz solar. É essencial escolher plantas que tenham exigências complementares de nutrientes e que possam ajudar a repelir pragas de forma natural.',
      'complications': 'As complicações incluem a competição por nutrientes, água e luz entre as culturas plantadas juntas. A necessidade de monitoramento constante para garantir que uma cultura não esteja sufocando a outra é crucial. Além disso, diferentes plantas podem ser suscetíveis a doenças específicas, o que pode exigir práticas de manejo integrado para minimizar o risco de infestações.',
       'image': 'assets/images/multicultura.jpg',
    },
    {
      'name': 'Plantio em estufa',
      'cost': 'Alto',
      'needs': 'Uma estufa é um ambiente controlado usado para cultivar plantas em condições ideais. Ela requer estrutura adequada, incluindo ventilação e iluminação controladas, além de sistemas de irrigação eficientes para manter o ambiente úmido e estável. O controle preciso da temperatura e umidade dentro da estufa é essencial para maximizar o crescimento das plantas.',
      'complications': 'Apesar de suas vantagens, as estufas enfrentam desafios como o manejo correto da umidade para evitar o crescimento de fungos e o controle de pragas que podem se proliferar em condições protegidas. Além disso, o custo inicial de montagem e manutenção das estruturas pode ser significativo. A superaquecimento ou subaquecimento também pode ocorrer se não houver monitoramento adequado, afetando negativamente o crescimento das plantas.',
      'image': 'assets/images/estufa.jpg',
    },
    {
      'name': 'Plantio em vasos ou recipientes',
      'cost': 'Variável (depende do recipiente)',
      'needs': 'O plantio em vasos ou recipientes requer escolha cuidadosa do substrato para garantir boa drenagem e aeração das raízes. Além disso, é essencial proporcionar nutrição adequada por meio de fertilizantes balanceados. A escolha do recipiente também deve considerar o tamanho apropriado para o crescimento saudável das plantas.',
      'complications': 'Um desafio comum é a limitação de espaço para o desenvolvimento das raízes, o que pode restringir o crescimento das plantas. Além disso, o manejo da irrigação é crucial para evitar problemas como o acúmulo de água no fundo do vaso, que pode levar ao apodrecimento das raízes. A escolha incorreta do substrato pode resultar em compactação do solo, afetando a saúde das plantas.',
      'image': 'assets/images/vazo.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agudos do Sul Paraná'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundcult.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: cultivationMethods.length,
            itemBuilder: (ctx, index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green, // Cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreenCultivation(details: cultivationMethods[index]),
                    ),
                  );
                },
                child: Text(cultivationMethods[index]['name']!),
              );
            },
          ),
        ],
      ),
    );
  }
}
class DetailScreenCultivation extends StatelessWidget {
  final Map<String, String> details;
  DetailScreenCultivation({required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(details['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  details['image']!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    details['name']!,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Preço:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(details['cost']!),
            SizedBox(height: 10),
            Text(
              'Necessidades:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(details['needs']!),
            SizedBox(height: 10),
            Text(
              'Possíveis complicações:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ), Text(details['complications']!),
          ],
        ),
      ),
    );
  }
}

class RotationScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'id': '1',
      'name': 'Milho',
      'description': 'O milho é uma planta anual da família das gramíneas.',
      'image': 'assets/images/milho.jpg',
      'time': '120 dias',
      'cultivation': 'Plantio direto em solo fértil',
      'complications': 'Pragas como lagartas e doenças fúngicas',
    },
    {
      'id': '2',
      'name': 'Feijão',
      'description': 'O feijão é uma planta leguminosa cultivada por suas sementes comestíveis.',
      'image': 'assets/images/feijao.jpg',
      'time': '60 dias',
      'cultivation': 'Plantio direto ou consorciado com milho',
      'complications': 'Doenças fúngicas e insetos',
    },
    {
      'id': '3',
      'name': 'Batata',
      'description': 'A batata é uma planta tuberosa comestível amplamente cultivada.',
      'image': 'assets/images/batata.jpg',
      'time': '90 dias',
      'cultivation': 'Plantio direto em solo bem drenado e rico em matéria orgânica',
      'complications': 'Pragas como besouros e doenças bacterianas',
    },
    {
      'id': '4',
      'name': 'Cenoura',
      'description': 'A cenoura é uma raiz comestível rica em beta-caroteno e vitaminas.',
      'image': 'assets/images/cenoura.jpg',
      'time': '70 dias',
      'cultivation': 'Plantio direto em solo profundo, solto e bem drenado',
      'complications': 'Pragas como pulgões e nematoides',
    },
    {
      'id': '5',
      'name': 'Beterraba',
      'description': 'A beterraba é uma raiz comestível rica em nutrientes e antioxidantes.',
      'image': 'assets/images/beterraba.jpg',
      'time': '60 dias',
      'cultivation': 'Plantio direto em solo fértil e bem drenado',
      'complications': 'Doenças fúngicas e pragas como pulgões',
    },
    {
      'id': '6',
      'name': 'Abóbora',
      'description': 'A abóbora é um fruto comestível de grande porte com várias aplicações culinárias.',
      'image': 'assets/images/abobora.jpg',
      'time': '90 dias',
      'cultivation': 'Plantio direto em solo fértil e bem drenado',
      'complications': 'Pragas como lagartas e doenças fúngicas',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agudos do Sul Paraná'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'), 
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: products.length,
            itemBuilder: (ctx, index) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green, // Cor do texto do botão
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreenRotation(product: products[index]),
                    ),
                  );
                },
                child: Text(products[index]['name']!),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetailScreenRotation extends StatelessWidget {
  final Map<String, String> product;

  DetailScreenRotation({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  product['image']!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    product['name']!,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            Text(
              'Descrição:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(product['description']!),
            SizedBox(height: 10),
            Text(
              'Tempo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(product['time']!),
            SizedBox(height: 10),
            Text(
              'Forma de cultivo:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(product['cultivation']!),
            SizedBox(height: 10),
            Text(
              'Possíveis complicações:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(product['complications']!),
          ],
        ),
      ),
    );
  }
}
