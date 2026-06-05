import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String urlString) async {
  try {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      await launchUrl(url);
    }
  } catch (e) {
    debugPrint('Could not launch URL: $e');
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Sitios Turisticos';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/panecillo.jpg'),
              TitleSection(name: 'El Panecillo', location: 'UIO'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=El+Panecillo+Quito',
              ),
              TextSection(
                description:
                    'El Panecillo es una elevación natural de 3.000 metros sobre el nivel del mar, enclavada en el corazón mismo de la ciudad de Quito. Un atractivo turístico de la capital de Ecuador que no pueden dejar de visitar.',
              ),

              ImageSection(image: 'images/malecon.jpg'),
              TitleSection(name: 'El Malecon', location: 'GYE'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Malecon+2000+Guayaquil',
              ),
              TextSection(
                description:
                    'Malecón 2000, ubicado en la ciudad de Guayaquil, junto al río Guayas, es un proyecto de regeneración urbana del antiguo Malecón Simón Bolívar, de 2.5 km de extensión en donde se puede disfrutar de los grandes monumentos de la historia de Guayaquil, como el Hemiciclo de la Rotonda, museos, jardines, fuentes, centro comercial, restaurantes, bares, patios de comida, el primer cine IMAX de Sudamérica, así como muelles, desde donde se puede abordar embarcaciones para realizar paseos diurnos y nocturnos por el río Guayas y miradores entre otras atracciones turísticas.',
              ),

              ImageSection(image: 'images/islafloreana.jpg'),
              TitleSection(name: 'Isla Floreana', location: 'GLP'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Isla+Floreana+Galapagos',
              ),
              TextSection(
                description:
                    'La Isla Floreana es la sexta isla más grande por su extensión en kilómetros cuadrados del archipiélago ecuatoriano de las Islas Galápagos, administrativamente pertenece a la Parroquia llamada Santa María, del Cantón de San Cristóbal, en la Provincia de Galápagos, siendo su localidad más grande el poblado de Puerto Velasco Ibarra.',
              ),

              ImageSection(image: 'images/sanfrancisco.jpg'),
              TitleSection(name: 'Iglesia de San Francisco', location: 'UIO'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Iglesia+de+San+Francisco+Quito',
              ),
              TextSection(
                description:
                    'El conjunto de la Iglesia y Convento de San Francisco es un edificio católico que se yergue en medio del centro histórico de la ciudad de Quito, frente a la plaza del mismo nombre. San Francisco, el más imponente monumento arquitectónico quiteño. Ofrece a la admiración del visitante templo, capillas y convento.',
              ),

              ImageSection(image: 'images/basilica.jpg'),
              TitleSection(name: 'Basílica del Voto Nacional', location: 'UIO'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Basilica+del+Voto+Nacional+Quito',
              ),
              TextSection(
                description:
                    'Basílica del Voto Nacional es un edificio religioso de estilo neogótico del centro histórico de la ciudad de Quito. Por sus dimensiones y estilo está considerado como el templo neogótico más grande de América. Es una de las iglesias más hermosas de la ciudad, adornada con gárgolas inspiradas en la fauna del país tal como armadillos, las iguanas y tortugas de Galápagos.',
              ),

              ImageSection(image: 'images/cuenca.jpg'),
              TitleSection(name: 'Cuenca', location: 'CUE'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Cuenca+Ecuador',
              ),
              TextSection(
                description:
                    'Cuenca es la tercera ciudad del país y una de las más visitadas. Su Centro Histórico fue declarado Patrimonio Cultural de la Humanidad por la Unesco. La arquitectura cuencana siempre se ha destacado por su unicidad y su hermosura. Cuenca se encuentra rodeada de cuatro ríos, lo que da a la ciudad un aire pacífico y pintoresco.',
              ),

              ImageSection(image: 'images/catedralmetropolitana.jpg'),
              TitleSection(
                name: 'Catedral Metropolitana de Guayaquil',
                location: 'GYE',
              ),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Catedral+Metropolitana+de+Guayaquil',
              ),
              TextSection(
                description:
                    'La Catedral Metropolitana de Guayaquil es una catedral ecuatoriana que se encuentra en pleno centro de Guayaquil, fue construida entre los 1547, cuenta con hermosas torres estilo semi gótico, fue la iglesia matriz a mediados del siglo XVI. Se la conoce también como la Iglesia Matriz. Se caracteriza por el estilo gótico de sus torres y constituye uno de los íconos religiosos más importantes de la ciudad. Estas se encuentran en la parte posterior y poseen una nave central de cimborrio, donde se ubica la estatua del Cristo Rey, bendiciendo a Guayaquil.',
              ),

              ImageSection(image: 'images/lacarolina.jpg'),
              TitleSection(name: 'Parque la Carolina', location: 'UIO'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Parque+La+Carolina+Quito',
              ),
              TextSection(
                description:
                    'Parque La Carolina. Espacio verde de carácter público de la ciudad de Quito, capital de la República del Ecuador. Con 67 hectáreas de terreno, este es uno de los parques urbanos más grandes del Distrito, del país y de América del Sur. Durante la semana, acoge a deportistas habituales quienes disfrutan de la atmósfera tranquila que ofrece el lugar por las mañanas. Mientras que los fines de semana, recibe aproximadamente a 50.000 personas. Aquí usted puede retozar en los jardines o jugar fútbol, practicar baloncesto, patinar, ejercitar su cuerpo haciendo aeróbicos, montando a caballo o simplemente caminar junto a su familia o amigos.',
              ),

              ImageSection(image: 'images/museoarte.jpg'),
              TitleSection(
                name: 'Museo Antropológico y de Arte Contemporáneo',
                location: 'GYE',
              ),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=MAAC+Guayaquil',
              ),
              TextSection(
                description:
                    'El Museo Antropológico y de Arte Contemporáneo, también conocido por su acrónimo MAAC, es un museo de la ciudad de Guayaquil, Ecuador. En este museo se expone arte y cultura de Ecuador, Latinoamérica y de la Era Precolombina. El museo tiene una exhibición de una colección de 50.000 piezas arqueológicas nativas ecuatorianas y más de 3.000 obras de arte modernas.',
              ),

              ImageSection(image: 'images/islarabida.jpg'),
              TitleSection(name: 'Isla Rabida', location: 'GLP'),
              ButtonSection(
                googleMapsUrl:
                    'https://www.google.com/maps/search/?api=1&query=Isla+Rabida+Galapagos',
              ),
              TextSection(
                description:
                    'La Isla Rábida, es una isla ecuatoriana, que forma parte del Archipiélago de las Islas Galápagos, en el océano Pacífico, está ubicada al sur de la Isla Santiago, al Noreste de Isabela, y al noroeste de Santa Cruz, a unos 965 km (600 millas) de la costa firme de Ecuador. Rábida es comúnmente considerada como el centro geográfico de las Islas Galápagos. Rábida es una de las islas más variadas volcánicamente. Geológicamente compuesto de colinas erosionadas y lava emitida por salpicaduras de conos que han desembocado y creado la isla de colores. Es una isla inhabitada, donde se puede disfrutar de su excepcional belleza natural y animal.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          // Icon(Icons.star, color: Colors.red[500]),
          // const Text('41'),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key, required this.googleMapsUrl});

  final String googleMapsUrl;

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'Llamar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Llamando al sitio turístico...')),
              );
            },
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'Ubicacion',
            onPressed: () => _launchUrl(googleMapsUrl),
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'Compartir',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Enlace copiado al portapapeles para compartir.',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(width: 18, child: SizedBox(child: Text('$_favoriteCount'))),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
