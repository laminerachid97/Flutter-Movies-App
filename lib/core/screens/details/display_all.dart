import 'package:flutter/material.dart';

class DisplayAll extends StatefulWidget {
  const DisplayAll({super.key});

  @override
  State<DisplayAll> createState() => _DisplayAll();
}

class _DisplayAll extends State<DisplayAll> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies.values.elementAt(index);
              return Card(
                color: Colors.black,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius:const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.network(
                          movie["poster"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Movie Details
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie["title"],
                            style:const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Director: ${movie["director"]}",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[700]),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "Year: ${movie["year"]}",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

  final Map<int, Map<String, dynamic>> movies = {
    1: {
      "id": 1,
      "title": "Inception",
      "director": "Christopher Nolan",
      "year": 2010,
      "poster": "https://play-lh.googleusercontent.com/buKf27Hxendp3tLNpNtP3E-amP0o4yYV-SGKyS2u-Y3GdGRTyfNCIT5WAVs2OudOz6so5K1jtYdAUKI9nw8"
    },
    2: {
      "id": 2,
      "title": "The Dark Knight",
      "director": "Christopher Nolan",
      "year": 2008,
      "poster": "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    },
    3: {
      "id": 3,
      "title": "Interstellar",
      "director": "Christopher Nolan",
      "year": 2014,
      "poster": "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p10543523_p_v8_as.jpg",
    },
    4: {
      "id": 4,
      "title": "The Matrix",
      "director": "Lana Wachowski, Lilly Wachowski",
      "year": 1999,
      "poster": "https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    },
    5: {
      "id": 5,
      "title": "Avengers: Endgame",
      "director": "Anthony Russo, Joe Russo",
      "year": 2019,
      "poster": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
    },
    6: {
      "id": 1,
      "title": "Inception",
      "director": "Christopher Nolan",
      "year": 2010,
      "poster": "https://play-lh.googleusercontent.com/buKf27Hxendp3tLNpNtP3E-amP0o4yYV-SGKyS2u-Y3GdGRTyfNCIT5WAVs2OudOz6so5K1jtYdAUKI9nw8"
    },
    7: {
      "id": 2,
      "title": "The Dark Knight",
      "director": "Christopher Nolan",
      "year": 2008,
      "poster": "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    },
    8: {
      "id": 3,
      "title": "Interstellar",
      "director": "Christopher Nolan",
      "year": 2014,
      "poster": "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p10543523_p_v8_as.jpg",
    },
    9: {
      "id": 4,
      "title": "The Matrix",
      "director": "Lana Wachowski, Lilly Wachowski",
      "year": 1999,
      "poster": "https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    },
    10: {
      "id": 5,
      "title": "Avengers: Endgame",
      "director": "Anthony Russo, Joe Russo",
      "year": 2019,
      "poster": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg",
    },
  };
