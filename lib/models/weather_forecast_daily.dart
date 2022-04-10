// import 'package:weather_example/utilities/constants.dart';

// class WeatherForecast {
//   City? city;
//   String? cod;
//   double? message;
//   int? cnt;
//   List<WeatherList>? list;

//   WeatherForecast({this.city, this.cod, this.message, this.cnt, this.list});

//   WeatherForecast.fromJson(Map<String, dynamic> json) {
//     city = json['city'] != null ? new City.fromJson(json['city']) : null;
//     cod = json['cod'];
//     message = json['message'];
//     cnt = json['cnt'];
//     if (json['list'] != null) {
//       list = <WeatherList>[];
//       json['list'].forEach((v) {
//         list!.add(new WeatherList.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.city != null) {
//       data['city'] = this.city!.toJson();
//     }
//     data['cod'] = this.cod;
//     data['message'] = this.message;
//     data['cnt'] = this.cnt;
//     if (this.list != null) {
//       data['list'] = this.list!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class City {
//   int? id;
//   String? name;
//   Coord? coord;
//   String? country;
//   int? population;
//   int? timezone;

//   City(
//       {this.id,
//       this.name,
//       this.coord,
//       this.country,
//       this.population,
//       this.timezone});

//   City.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     coord = json['coord'] != null ? new Coord.fromJson(json['coord']) : null;
//     country = json['country'];
//     population = json['population'];
//     timezone = json['timezone'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     if (this.coord != null) {
//       data['coord'] = this.coord!.toJson();
//     }
//     data['country'] = this.country;
//     data['population'] = this.population;
//     data['timezone'] = this.timezone;
//     return data;
//   }
// }

// class Coord {
//   double? lon;
//   double? lat;

//   Coord({this.lon, this.lat});

//   Coord.fromJson(Map<String, dynamic> json) {
//     lon = json['lon'];
//     lat = json['lat'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['lon'] = this.lon;
//     data['lat'] = this.lat;
//     return data;
//   }
// }

// class WeatherList {
//   int? dt;
//   int? sunrise;
//   int? sunset;
//   Temp? temp;
//   FeelsLike? feelsLike;
//   int? pressure;
//   int? humidity;
//   List<Weather>? weather;
//   double? speed;
//   int? deg;
//   double? gust;
//   int? clouds;
//   double? pop;
//   num? rain;

//   WeatherList(
//       {this.dt,
//       this.sunrise,
//       this.sunset,
//       this.temp,
//       this.feelsLike,
//       this.pressure,
//       this.humidity,
//       this.weather,
//       this.speed,
//       this.deg,
//       this.gust,
//       this.clouds,
//       this.pop,
//       this.rain});

//   WeatherList.fromJson(Map<String, dynamic> json) {
//     dt = json['dt'];
//     sunrise = json['sunrise'];
//     sunset = json['sunset'];
//     temp = json['temp'] != null ? new Temp.fromJson(json['temp']) : null;
//     feelsLike = json['feels_like'] != null
//         ? new FeelsLike.fromJson(json['feels_like'])
//         : null;
//     pressure = json['pressure'];
//     humidity = json['humidity'];
//     if (json['weather'] != null) {
//       weather = <Weather>[];
//       json['weather'].forEach((v) {
//         weather!.add(new Weather.fromJson(v));
//       });
//     }
//     speed = json['speed'];
//     deg = json['deg'];
//     gust = json['gust'];
//     clouds = json['clouds'];
//     pop = json['pop'];
//     rain = json['rain'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['dt'] = this.dt;
//     data['sunrise'] = this.sunrise;
//     data['sunset'] = this.sunset;
//     if (this.temp != null) {
//       data['temp'] = this.temp!.toJson();
//     }
//     if (this.feelsLike != null) {
//       data['feels_like'] = this.feelsLike!.toJson();
//     }
//     data['pressure'] = this.pressure;
//     data['humidity'] = this.humidity;
//     if (this.weather != null) {
//       data['weather'] = this.weather!.map((v) => v.toJson()).toList();
//     }
//     data['speed'] = this.speed;
//     data['deg'] = this.deg;
//     data['gust'] = this.gust;
//     data['clouds'] = this.clouds;
//     data['pop'] = this.pop;
//     data['rain'] = this.rain;
//     return data;
//   }

//   String getIconUrl() {
//     String url =
//         Constants.WEATHER_IMAGES_URL + weather![0].icon.toString() + '.png';
//     return url;
//   }
// }

// class Temp {
//   double? day;
//   double? min;
//   double? max;
//   double? night;
//   double? eve;
//   double? morn;

//   Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

//   Temp.fromJson(Map<String, dynamic> json) {
//     day = json['day'].toDouble();
//     min = json['min'].toDouble();
//     max = json['max'].toDouble();
//     night = json['night'].toDouble();
//     eve = json['eve'].toDouble();
//     morn = json['morn'].toDouble();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['day'] = this.day;
//     data['min'] = this.min;
//     data['max'] = this.max;
//     data['night'] = this.night;
//     data['eve'] = this.eve;
//     data['morn'] = this.morn;
//     return data;
//   }
// }

// class FeelsLike {
//   double? day;
//   double? night;
//   double? eve;
//   double? morn;

//   FeelsLike({this.day, this.night, this.eve, this.morn});

//   FeelsLike.fromJson(Map<String, dynamic> json) {
//     day = json['day'];
//     night = json['night'];
//     eve = json['eve'];
//     morn = json['morn'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['day'] = this.day;
//     data['night'] = this.night;
//     data['eve'] = this.eve;
//     data['morn'] = this.morn;
//     return data;
//   }
// }

// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;

//   Weather({this.id, this.main, this.description, this.icon});

//   Weather.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     main = json['main'];
//     description = json['description'];
//     icon = json['icon'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['main'] = this.main;
//     data['description'] = this.description;
//     data['icon'] = this.icon;
//     return data;
//   }
// }

import '../utilities/constants.dart';

class WeatherForecast {
  late City city;
  late String cod;
  late double message;
  late int cnt;
  List<WeatherList>? list;

  WeatherForecast({
    required this.city,
    required this.cod,
    required this.message,
    required this.cnt,
    this.list,
  });

  WeatherForecast.fromJson(Map<String, dynamic> json) {
    city = (json['city'] != null ? City.fromJson(json['city']) : null) as City;
    cod = json['cod'];
    message = json['message'];
    cnt = json['cnt'];
    if (json['list'] != null) {
      list = [];
      json['list'].forEach((v) {
        list?.add(WeatherList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city.toJson();
    data['cod'] = cod;
    data['message'] = message;
    data['cnt'] = cnt;
    if (list != null) {
      data['list'] = list?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class City {
  late int id;
  late String name;
  late Coord coord;
  late String country;
  late int population;
  late int timezone;

  City({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
  });

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    coord =
        (json['coord'] != null ? Coord.fromJson(json['coord']) : null) as Coord;
    country = json['country'];
    population = json['population'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['coord'] = coord.toJson();
    data['country'] = country;
    data['population'] = population;
    data['timezone'] = timezone;
    return data;
  }
}

class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'].toDouble();
    lat = json['lat'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

class WeatherList {
  late int dt;
  late int sunrise;
  late int sunset;
  late Temp temp;
  late FeelsLike feelsLike;
  late int pressure;
  late int humidity;
  late List<Weather> weather;
  late double speed;
  late int deg;
  late int clouds;
  //late double rain;

  WeatherList({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.weather,
    required this.speed,
    required this.deg,
    required this.clouds,
    //required this.rain,
  });

  WeatherList.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = (json['temp'] != null ? Temp.fromJson(json['temp']) : null) as Temp;
    feelsLike = (json['feels_like'] != null
        ? FeelsLike.fromJson(json['feels_like'])
        : null) as FeelsLike;
    pressure = json['pressure'];
    humidity = json['humidity'];
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather.add(Weather.fromJson(v));
      });
    }
    speed = json['speed'];
    deg = json['deg'];
    clouds = json['clouds'];
    //rain = json['rain'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['temp'] = temp.toJson();
    data['feels_like'] = feelsLike.toJson();
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['weather'] = weather.map((v) => v.toJson()).toList();
    data['speed'] = speed;
    data['deg'] = deg;
    data['clouds'] = clouds;
    //data['rain'] = this.rain;
    return data;
  }

  String getIconUrl() {
    return Constants.WEATHER_IMAGES_URL + weather[0].icon + '.png';
  }
}

class Temp {
  late double day;
  late double min;
  late double max;
  late double night;
  late double eve;
  late double morn;

  Temp({
    required this.day,
    required this.min,
    required this.max,
    required this.night,
    required this.eve,
    required this.morn,
  });

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'].toDouble();
    min = json['min'].toDouble();
    max = json['max'].toDouble();
    night = json['night'].toDouble();
    eve = json['eve'].toDouble();
    morn = json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['min'] = min;
    data['max'] = max;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

class FeelsLike {
  late double day;
  late double night;
  late double eve;
  late double morn;

  FeelsLike({
    required this.day,
    required this.night,
    required this.eve,
    required this.morn,
  });

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'].toDouble();
    night = json['night'].toDouble();
    eve = json['eve'].toDouble();
    morn = json['morn'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['day'] = day;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

class Weather {
  late int id;
  late String main;
  late String description;
  late String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}
