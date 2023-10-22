import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BotChatPage(),
    ));

class FAQItem {
  final String question;
  final String answer;

  FAQItem(this.question, this.answer);
}

class FAQList {
  final List<FAQItem> faqItems = [
    FAQItem('¿Que es la Menopausia?',
        'Esta es una etapa natural en la vida de una mujer que marca el cese permanente de la menstruación y la capacidad reproductiva. está asociada con cambios hormonales que pueden desencadenar una serie de síntomas. '),
    FAQItem('¿Cuáles son los sintomas mas comunes en estas etapas?',
        'Los sintomas mas comunes van desde sofocos, migrañas, dolor de articulaciones, cansancios o mareos, aunque hay muchas mas puedes visitar la pesataña de sintomas para tener mas informacion de los distintos tipos'),
    FAQItem('¿Cuándo comienza la menopausia?',
        'La menopausia puede empezar entre los 45 a los 55. aunque toma en cuenta que la perimenopausia puede empezar incluso desde los 35 años en algunos casos'),
    FAQItem('¿Cuánto tiempo dura la menopausia?',
        'La menopausia puede durar un estimado de 10 años. termianando esta fase algunas mujeres pueden pasar por la postmenopausia que conlleva tambien una serie de problemas y sintomas '),
    FAQItem('¿Cuáles son las etapas de la menopausia?',
        'La menopausia puede constar de un total de 3 etapas; perimenopausia, menopausia y postmenopausia'),
    FAQItem(
        '¿Cuáles son las opciones de tratamiento para los síntomas de la menopausia?',
        'Los tratamientos principales puedes ser varios y especifico para cada sintoma, visita la pestaña tratamientos en la pagina principal para informarte de mejor manera'),
    FAQItem('¿Cómo mantener un estilo de vida saludable durante la menopausia?',
        'Hay varias formas de mantener un estilo de vida saludable, para esto puedes consultar nuestro apartado de estilo de vida en la pagina princial'),
    FAQItem('¿Como puede ayudarme esta aplicacion?',
        'La aplicacion puede servirte para llevar un conocimiento mas eficaz de tus sintomas, sus tratamientos, darte consejos sobre tu sald y tu estolo de vida'),
    FAQItem('¿Como usar la aplicacion?',
        'Puedes usar la aplicacion de manera sencilla, selecciona tu pagina principal y luego guiate por lo que mas desees saber'),
    FAQItem('¿Es importante la edad dentro de la aplicación?',
        'Si, la edad funciona para que las secciones de estilo de vida y cuidados sean diferentes para tus condiciones'),
    FAQItem('¿necesito tener conexion a internet para usar la aplicación?',
        'No, puedes usar la aplicacion sin necesidad de estar conectada a una red')
  ];
}

class BotChatPage extends StatefulWidget {
  @override
  _BotChatPageState createState() => _BotChatPageState();
}

class _BotChatPageState extends State<BotChatPage> {
  FAQList faqList = FAQList();
  List<FAQItem> chatHistory = [];
  String _currentQuestion = '';
  String _answer = '';

  void _askQuestion(String question) {
    setState(() {
      _currentQuestion = question;
      _answer = faqList.faqItems
          .firstWhere(
            (item) => item.question == question,
            orElse: () => FAQItem('', ''),
          )
          .answer;
      chatHistory.add(FAQItem(_currentQuestion, _answer));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas comunes'),
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Color.fromRGBO(255, 190, 242, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: chatHistory.isEmpty
                  ? const Center(
                      child: Text(
                        'Usa el botón para ver las preguntas más comunes e informarte sobre todas las posibilidades',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.builder(
                      itemCount: chatHistory.length,
                      itemBuilder: (context, index) {
                        return ChatBubble(
                          question: chatHistory[index].question,
                          answer: chatHistory[index].answer,
                        );
                      },
                    ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        // Usa SingleChildScrollView aquí
                        child: Column(
                          children: faqList.faqItems
                              .map((item) => ListTile(
                                    title: Text(item.question),
                                    onTap: () {
                                      _askQuestion(item.question);
                                      Navigator.of(context).pop();
                                    },
                                  ))
                              .toList(),
                        ),
                      );
                    },
                  );
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Pregunta algo',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String question;
  final String answer;

  ChatBubble({
    required this.question,
    required this.answer,
  });

  BoxDecoration _getGradientBoxDecoration(List<Color> colors) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(50.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              Flexible(
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: _getGradientBoxDecoration([
                    const Color.fromARGB(197, 254, 67, 251),
                    const Color.fromARGB(197, 255, 117, 209),
                  ]),
                  child: Text(
                    question,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  decoration: _getGradientBoxDecoration([
                    const Color.fromARGB(197, 255, 117, 209),
                    const Color.fromARGB(197, 254, 67, 251),
                  ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            answer,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 32.0,
                  height: 32.0,
                  margin: const EdgeInsets.only(top: 8.0, left: 8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
