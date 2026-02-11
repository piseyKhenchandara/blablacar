import 'package:blabla/data/dummy_data.dart';

import '../model/ride/locations.dart';

////
///   This service handles:
///   - The list of available rides
///
class LocationsService {
  static const List<Location> availableLocations = [
    Location(name: "Paris", country: Country.france),
    Location(name: 'Lyon', country: Country.france),
    Location(name: 'London', country: Country.uk),
    Location(name: 'Manchester', country: Country.uk),
    Location(name: 'Madrid', country: Country.spain),
    Location(name: 'Barcelona', country: Country.spain),
  ];
}
