import 'package:flutter/material.dart';

class SintomasScreen extends StatefulWidget {
  const SintomasScreen({Key? key}) : super(key: key);

  @override
  _SintomasScreenState createState() => _SintomasScreenState();
}

class _SintomasScreenState extends State<SintomasScreen> {
  String? selectedSymptom;
  Widget? selectedWidget;

  final List<String> symptoms = ['Sofocos', 'Dolor de Cabeza', 'xansansio'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Síntomas'),
      ),
      extendBody: true,
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
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
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 191, 242, 1),
                        Color.fromARGB(219, 255, 194, 232),
                        Color.fromARGB(197, 255, 213, 254),
                        Color.fromARGB(121, 255, 255, 255),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      _showSymptomPicker(context);
                    },
                    style: ButtonStyle(
                      elevation:
                          MaterialStateProperty.all(0), // Elimina la sombra
                      backgroundColor: MaterialStateProperty.all(
                          Colors.transparent), // Fondo transparente
                      overlayColor: MaterialStateProperty.all(Colors
                          .transparent), // Color de superposición transparente
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Icon(Icons.search,
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Agrega el icono de búsqueda
                          const SizedBox(
                              width: 8.0), // Espacio entre el icono y el texto
                          Text(selectedSymptom ?? 'Selecciona un síntoma',
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 19, 0, 0))),
                        ],
                      ),
                    ),
                  ),
                ),
                if (selectedWidget == null)
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      Principal(),
                      const SizedBox(height: 20),
                      Principal2(),
                    ],
                  ),
                if (selectedWidget != null) selectedWidget!,
              ],
            )),
      ),
    );
  }

  void _showSymptomPicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: symptomWidgets.length,
            itemBuilder: (context, index) {
              final info = symptomWidgets[index];
              return ListTile(
                title: Text(
                  info.symptom,
                  style: const TextStyle(fontSize: 22),
                ),
                onTap: () {
                  setState(() {
                    selectedSymptom = info.symptom;
                    selectedWidget = info.widget;
                  });
                  Navigator.pop(context);
                },
              );
            },
          );
        });

    // También puedes agregar una lógica para el widget predeterminado aquí
    if (selectedSymptom == null) {
      setState(() {
        selectedWidget = defaultWidget;
      });
    }
  }
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Los síntomas de la perimenopausia, menopausia y postmenopausia suceden debido a los cambios hormonales que experimenta el cuerpo, la mayoría de los síntomas de la menopausia y las etapas relacionadas son el resultado de cambios hormonales, en particular la disminución de los niveles de estrógeno y progesterona en el cuerpo.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Principal2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Recuerda que  cada cuerpo es diferente, los síntomas varían de persona a persona. Hay quienes tienen síntomas más intensos y quienes tienen síntomas muy leves.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//----------------------------------------------------------------------------------------------

class Sofoco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Sofocos',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los sofocos son uno de los síntomas más notorios, Se manifiestan como oleadas súbitas de calor que comienzan en el pecho y se extienden hacia la cabeza y el cuello. Durante un sofoco, la piel puede enrojecerse y calentarse significativamente. Estos episodios suelen ir acompañados de sudoración profusa y, en ocasiones, de palpitaciones cardíacas',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cambiosenelciclo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 430,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el Ciclo Menstrual',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el ciclo menstrual son una característica distintiva de la perimenopausia y la menopausia. Durante la perimenopausia, que es la etapa de transición hacia la menopausia, las mujeres pueden experimentar alteraciones significativas en su ciclo menstrual. Estos cambios son principalmente el resultado de fluctuaciones hormonales, en particular una disminución en los niveles de estrógeno.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cambiosanimo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el estado de ánimo.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el estado de ánimo son otro síntoma común en la perimenopausia, la menopausia y la postmenopausia. Estos cambios pueden ser atribuidos a fluctuaciones hormonales, en particular la disminución de los niveles de estrógeno, que afecta el equilibrio químico en el cerebro. Aquí tienes una descripción más detallada',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProblemasDormir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Problemas para dormir.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los problemas para dormir, incluido el insomnio, son síntomas frecuentes en la perimenopausia, la menopausia y la postmenopausia. Estos problemas pueden estar relacionados con los cambios hormonales, los sofocos nocturnos y otros factores, La falta de sueño de calidad puede tener un impacto significativo en la salud y el bienestar general, lo que incluye fatiga, cambios en el estado de ánimo, dificultades cognitivas y un mayor riesgo de problemas de salud a largo plazo',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sequedad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Sequedad Vaginal.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'La sequedad vaginal es un síntoma común en la menopausia y puede ser causa de incomodidad y dolor durante las relaciones sexuales. Este síntoma se produce debido a la disminución de los niveles de estrógeno, que afecta la lubricación natural',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AumentoPeso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Aumento de peso.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'El aumento de peso es un síntoma común durante la menopausia, aunque no todas las mujeres lo experimentan de la misma manera. Los cambios hormonales, como la disminución de los niveles de estrógeno, pueden contribuir a la redistribución de la grasa y a la pérdida de masa muscular, lo que a menudo lleva a un aumento de peso',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Nicturia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Necesidad de orinar con frecuencia.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'La necesidad de orinar con frecuencia, también conocida como "urgencia urinaria" o "nicturia" cuando ocurre durante la noche, la disminución de los niveles de estrógeno puede afectar la salud de la vejiga. Esto puede llevar a una disminución de la capacidad de la vejiga para retener orina, lo que resulta en una necesidad de orinar con mayor frecuencia',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Piel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Sequedad en la piel y mucosas.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'La sequedad en la piel y las mucosas es un síntoma común de la menopausia debido a la disminución de los niveles de estrógeno en el cuerpo, La piel tiende a volverse más seca durante la menopausia. Puedes notar una sensación de tirantez, descamación o picazón en la piel. Esto se debe a la disminución de la producción de aceites naturales en la piel, que actúan como barrera protectora, Las mucosas en áreas como la vagina y la boca también pueden volverse más secas durante la menopausia. Algunas mujeres pueden experimentar sequedad en los ojos y labios, lo que puede llevar a irritación y visión borrosa.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sudores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Sudores nocturnos',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los sudores nocturnos, también conocidos como sofocos nocturnos, son un síntoma común de la menopausia que afecta a muchas mujeres. Estos sudores son similares a los sofocos diurnos, pero ocurren durante la noche y pueden interrumpir el sueño, los sudores nocturnos se caracterizan por una sensación súbita de calor que puede comenzar en el pecho, el cuello o la cara. Esta sensación de calor se extiende rápidamente por el cuerpo, Algunas veces Los sudores nocturnos pueden ir acompañados de un aumento del ritmo cardíaco y palpitaciones.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Fatiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Fatiga',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'La fatiga es un síntoma común durante la menopausia y puede variar en intensidad de una mujer a otra. Se caracteriza por una sensación persistente de cansancio, agotamiento o falta de energía, Esta puede deberse a varios factores, como los cambios hormonales, los sofocos y sudores nocturnos que interrumpen el sueño, el estrés, la falta de ejercicio y una mala alimentación,  El sueño interrumpido debido a los sofocos y otros síntomas de la menopausia contribuye a la fatiga diurna. Las mujeres pueden despertarse sintiéndose agotadas incluso después de una noche de sueño.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Vello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el vello corporal',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el vello corporal son un síntoma que algunas mujeres pueden experimentar durante la menopausia. Estos cambios suelen estar relacionados con las fluctuaciones hormonales, especialmente la disminución de los niveles de estrógeno, Algunas mujeres pueden notar un aumento en el vello corporal, mientras que otras pueden experimentar una disminución. Esto puede afectar áreas como las piernas, los brazos, el abdomen o el rostro,Estos cambios en el vello corporal están relacionados con las fluctuaciones hormonales que ocurren durante la menopausia. La disminución de los niveles de estrógeno puede afectar la regulación del crecimiento del vello.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Gusto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el Sentido del Gusto',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el sentido del gusto pueden ser un síntoma de la menopausia que algunas mujeres experimentan. Estos cambios pueden variar en intensidad y duración, Algunas mujeres pueden notar que los alimentos tienen un sabor diferente o que experimentan un sabor metálico en la boca, Puedes volverte más o menos sensible a ciertos sabores, lo que puede influir en tus preferencias alimentarias. Algunas mujeres pueden volverse más sensibles al sabor amargo, salado o dulce, Los cambios en el sentido del gusto pueden afectar el apetito y las preferencias alimentarias. Algunas mujeres pueden experimentar un aumento o una disminución del apetito',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Olor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el Sentido del Olfato',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el sentido del olfato son un síntoma menos común de la menopausia, pero algunas mujeres pueden experimentarlos. Estos cambios pueden variar en intensidad y duración, Algunas mujeres pueden experimentar una mayor sensibilidad al olor (hiperosmia) o, en algunos casos, una pérdida temporal o parcial del sentido del olfato (anosmia). ue ciertos olores se vuelven más intensos o desagradables, lo que puede influir en su bienestar. Estos cambios en la percepción del olor están relacionados con las fluctuaciones hormonales que ocurren durante la menopausia. La disminución de los niveles de estrógeno puede afectar la percepción de los olores.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Presion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la presión arterial',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en la presión arterial pueden ser un síntoma que algunas mujeres experimentan durante la menopausia. Estos cambios pueden variar en intensidad y duración, Algunas mujeres pueden experimentar un aumento en la presión arterial durante la menopausia. Esto se debe en parte a las fluctuaciones hormonales, especialmente la disminución de los niveles de estrógeno, La menopausia puede influir en la capacidad del cuerpo para regular la presión arterial de manera eficiente. Esto puede llevar a episodios de hipertensión intermitente.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 670,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la salud dental y bucal',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en la salud dental y bucal son un tema importante durante la menopausia, ya que las fluctuaciones hormonales pueden afectar la salud de la boca, Durante la menopausia, algunas mujeres pueden experimentar sequedad bucal, también conocida como xerostomía. La disminución de los niveles de estrógeno puede reducir la producción de saliva, lo que aumenta el riesgo de caries y enfermedades de las encías, Los cambios hormonales pueden llevar a un aumento de la sensibilidad y sangrado de las encías, especialmente durante la limpieza dental. Esto puede aumentar el riesgo de enfermedades de las encías, como la gingivitis, Algunas mujeres pueden notar cambios en la mucosa oral, como mucosas más delgadas o sensibles. Esto puede aumentar la susceptibilidad a llagas o aftas en la boca.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Equilibrio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el equilibrio y la coordinación.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en el equilibrio y la coordinación no suelen ser síntomas comunes de la menopausia, pero pueden ocurrir en algunas mujeres debido a factores relacionados con la edad y cambios hormonales, La pérdida de densidad ósea asociada con la menopausia, que puede llevar a la osteoporosis, aumenta el riesgo de fracturas y afecta la movilidad y el equilibrio, La pérdida de densidad ósea asociada con la menopausia, que puede llevar a la osteoporosis, aumenta el riesgo de fracturas y afecta la movilidad y el equilibrio.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tiroides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la función de la tiroides',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en la función de la tiroides no son típicos de la menopausia, pero pueden ocurrir en algunas mujeres durante esta etapa de la vida debido a factores individuales, Algunas mujeres pueden desarrollar hipotiroidismo durante o después de la menopausia. Esta afección se caracteriza por una función tiroidea deficiente, lo que puede llevar a una disminución en la producción de hormonas tiroideas,  Si bien la menopausia en sí no causa hipotiroidismo, los cambios hormonales y metabólicos que ocurren en esta etapa de la vida pueden influir en la función tiroidea en algunas mujeres.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Musculares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Dolores articulares y musculares',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los dolores articulares y musculares son síntomas que pueden afectar a algunas mujeres durante la menopausia, Algunas mujeres pueden experimentar dolor en las articulaciones, como rodillas, caderas o manos, durante la menopausia. Este dolor puede estar relacionado con cambios en los niveles hormonales y la pérdida de densidad ósea, Los dolores musculares, a menudo similares a la sensación de tener agujetas, también pueden ocurrir durante la menopausia. Estos dolores musculares pueden estar relacionados con cambios hormonales y la disminución de la masa muscular, La menopausia puede llevar a una disminución en los niveles de estrógeno, lo que puede afectar la salud de los huesos y músculos. Además, la inflamación y el estrés oxidativo también pueden contribuir al dolor articular y muscular',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Migranas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Migrañas o dolores de cabeza más frecuentes',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, algunas mujeres pueden experimentar migrañas o dolores de cabeza más frecuentes, Las migrañas son un tipo de dolor de cabeza intenso que a menudo se acompaña de síntomas adicionales, como náuseas, vómitos y sensibilidad a la luz y al ruido. Algunas mujeres pueden notar que sus migrañas se vuelven más frecuentes o intensas durante la menopausia, Los dolores de cabeza tensionales son otra forma común de dolor de cabeza. Pueden ser causados por el estrés, la tensión muscular y los cambios hormonales que ocurren durante la menopausia',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Mareos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Mareos o vértigo',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, algunas mujeres pueden experimentar episodios de mareos o vértigo, aunque no es uno de los síntomas más comunes, El vértigo es una forma más extrema de mareo que puede sentirse como si la habitación estuviera girando o moviéndose. Puede ser causado por problemas en el oído interno o desequilibrios en el sistema vestibular, Los cambios hormonales, la disminución de la circulación sanguínea y la fluctuación de la presión arterial pueden contribuir a los episodios de mareos o vértigo durante la menopausia',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cambiospiel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la textura de la piel',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, muchas mujeres experimentan cambios en la textura de la piel debido a la disminución de los niveles de estrógeno y otros factores relacionados con el envejecimiento, La piel tiende a volverse más seca durante la menopausia, lo que puede causar picazón, descamación y sensibilidad. La falta de estrógeno afecta la producción de aceites naturales de la piel, lo que conduce a la resequedad, La piel puede perder su elasticidad natural a medida que disminuyen los niveles de colágeno y elastina. Esto puede resultar en la aparición de arrugas y flacidez.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Alergias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Alergias o sensibilidades alimentarias',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, algunas mujeres pueden experimentar alergias o sensibilidades alimentarias, aunque no es uno de los síntomas más comunes, as alergias alimentarias son reacciones adversas del sistema inmunológico a ciertos alimentos. Pueden causar una variedad de síntomas, desde leves a graves, como erupciones cutáneas, hinchazón, dificultad para respirar y, en casos extremos, anafilaxia, Las sensibilidades alimentarias, a diferencia de las alergias, no involucran una respuesta inmunológica. En cambio, pueden provocar síntomas digestivos como hinchazón, gases, diarrea o estreñimiento después de consumir ciertos alimentos.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Apetito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 620,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el apetito',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, algunas mujeres experimentan cambios en el apetito, que pueden manifestarse de diversas maneras, Algunas mujeres pueden notar un aumento en su apetito durante la menopausia. Esto puede estar relacionado con cambios hormonales y emocionales, lo que lleva a un mayor consumo de alimentos, Otras mujeres pueden experimentar una disminución en su apetito. Pueden sentirse menos interesadas en la comida o pueden experimentar síntomas como náuseas, lo que puede reducir su deseo de comer, es común experimentar antojos de alimentos específicos, a veces alimentos ricos en azúcar o carbohidratos. Estos antojos pueden estar relacionados con cambios hormonales y emocionales.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 570,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la forma del cuerpo',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la menopausia, muchas mujeres experimentan cambios en la forma de su cuerpo, que a menudo están relacionados con la redistribución de la grasa y la pérdida de masa muscular,  La menopausia a menudo conlleva a la redistribución de la grasa corporal. Las mujeres pueden notar un aumento de la grasa en la zona abdominal, lo que lleva a una figura más "forma de manzana" en lugar de una figura más "forma de pera" que se observa típicamente en la juventud, La pérdida de masa muscular es común durante la menopausia. La disminución de los niveles de estrógeno puede contribuir a una menor densidad ósea y muscular.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Senos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 590,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la sensibilidad en los senos',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Los cambios en la sensibilidad en los senos son comunes durante la menopausia y pueden manifestarse de varias maneras, Algunas mujeres pueden experimentar un aumento en la sensibilidad de los senos durante la menopausia. Esto puede incluir dolor o molestias en los senos, lo que a menudo se denomina "mastalgia", Durante la menopausia, es posible que notes cambios en el tamaño y la forma de tus senos. Pueden volverse más pequeños o perder firmeza debido a la disminución de los niveles de estrógeno, Es importante destacar que estos cambios en la sensibilidad en los senos son en gran medida hormonales y parte del proceso natural de envejecimiento.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Urinarias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 590,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Infecciones urinarias',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Las infecciones urinarias son una preocupación común para muchas mujeres durante la menopausia, urante la menopausia, la disminución de los niveles de estrógeno puede llevar a cambios en el tracto urinario que hacen que las mujeres sean más susceptibles a las infecciones urinarias, Las infecciones urinarias pueden provocar síntomas como dolor o ardor al orinar, necesidad frecuente de orinar, orina turbia o con mal olor, presión en la pelvis y fiebre baja en casos graves, La atrofia vaginal, que es común durante la menopausia, puede hacer que la uretra sea más vulnerable a las infecciones urinarias debido a la sequedad y adelgazamiento de los tejidos.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Palpitaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 640,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Palpitaciones cardíacas',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Las palpitaciones cardíacas se refieren a la sensación de latidos del corazón que una persona puede experimentar de manera consciente, a menudo como latidos acelerados, fuertes o irregulares. Durante la menopausia, algunas mujeres pueden experimentar palpitaciones cardíacas debido a cambios hormonales y otros factores, Durante la menopausia, la disminución de los niveles de estrógeno puede afectar el sistema cardiovascular y causar palpitaciones. Además, la sudoración excesiva y los sofocos pueden aumentar la frecuencia cardíaca, Las palpitaciones pueden ir acompañadas de otros síntomas, como mareos, sudoración excesiva, debilidad o ansiedad, El estrés, la cafeína, el alcohol y los alimentos picantes a menudo se asocian con un aumento en las palpitaciones.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sueno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en el patrón de sueño',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'El insomnio es uno de los problemas de sueño más comunes durante la menopausia. Puedes tener dificultad para conciliar el sueño, despertarte durante la noche y tener dificultad para volver a dormir, Los sofocos nocturnos, que son oleadas repentinas de calor, pueden interrumpir tu sueño y hacerte despertar sudando, a menopausia puede alterar tu reloj biológico, lo que a menudo lleva a cambios en tus hábitos de sueño. Puedes sentirte más despierta por la noche y más somnolienta durante el día.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Libido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 480,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Cambios en la libido',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Una disminución en los niveles de estrógeno durante la menopausia puede llevar a una reducción del deseo sexual en algunas mujeres. La sequedad vaginal y los cambios hormonales pueden hacer que el sexo sea incómodo, lo que a su vez puede disminuir el interés en la actividad sexual, Algunas mujeres pueden experimentar cambios en la respuesta sexual, como una menor excitación o dificultad para alcanzar el orgasmo.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Peroidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 620,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Primer contenedor (div)
            child: const Text(
              'Periodos irregulares',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los contenedores
          Container(
            // Segundo contenedor (div)
            child: const Text(
              'Durante la perimenopausia, que es la fase de transición hacia la menopausia, es común experimentar periodos irregulares, Durante esta etapa, es posible que experimentes periodos menstruales más frecuentes o menos frecuentes de lo que estabas acostumbrada. Pueden producirse ciclos más cortos o más largos, lo que a veces puede ser impredecible, La cantidad y la duración del flujo menstrual también pueden variar. Algunas mujeres pueden tener menstruaciones más ligeras, mientras que otras pueden experimentar sangrado más abundante, Los periodos irregulares pueden ir acompañados de síntomas como cambios en el estado de ánimo, sofocos, sudores nocturnos y cambios en el patrón de sueño.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SymptomInfo {
  final String symptom;
  final Widget widget;

  SymptomInfo(this.symptom, this.widget);
}

final List<SymptomInfo> symptomWidgets = [
  SymptomInfo('Sofocos', Sofoco()),
  SymptomInfo('Cambios en el Ciclo Menstrual', Cambiosenelciclo()),
  SymptomInfo('Cambios en el Estado de Animo', Cambiosanimo()),
  SymptomInfo('Problemas para Dormir', ProblemasDormir()),
  SymptomInfo('Sequedad', Sequedad()),
  SymptomInfo('Aumento de Peso', AumentoPeso()),
  SymptomInfo('Necesidad de orinar con frecuencia', Nicturia()),
  SymptomInfo('Sequedad en la piel y mucosas', Piel()),
  SymptomInfo('Sudores Nocturnos', Sudores()),
  SymptomInfo('Fatiga', Fatiga()),
  SymptomInfo('Cambios en el Vello Corporal', Vello()),
  SymptomInfo('Cambios en el Sentido del Gusto', Gusto()),
  SymptomInfo('Cambios en el Sentido del Olfato', Olor()),
  SymptomInfo('Cambios en la Presion Arterial', Presion()),
  SymptomInfo('Cambios en la Salud Dental y Bucal', Dental()),
  SymptomInfo('Cambios en el Equilibrio y la Coordinación.', Equilibrio()),
  SymptomInfo('Cambios en la función de la tiroides', Tiroides()),
  SymptomInfo('Dolores Articulares y Musculares', Musculares()),
  SymptomInfo('Dolores de Cabeza más Frecuentes', Migranas()),
  SymptomInfo('Mareos o Vértigo', Mareos()),
  SymptomInfo('Cambios en la Textura de la Piel', Cambiospiel()),
  SymptomInfo('Alergias o Sensibilidades Alimentarias', Alergias()),
  SymptomInfo('Cambios en el Apetito', Apetito()),
  SymptomInfo('Cambios en la Forma del Cuerpo', Cuerpo()),
  SymptomInfo('Cambios en la Sensibilidad en los Senos', Senos()),
  SymptomInfo('Infecciones Urinarias', Urinarias()),
  SymptomInfo('Palpitaciones Cardíacas', Palpitaciones()),
  SymptomInfo('Cambios en el Patrón de Sueño', Sueno()),
  SymptomInfo('Cambios en la Libido', Libido()),
  SymptomInfo(
    'Cambios en el Periodo',
    Peroidos(),
  ),
];

final Widget defaultWidget = const SizedBox();
