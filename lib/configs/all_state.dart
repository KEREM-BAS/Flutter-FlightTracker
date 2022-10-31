class AllState {
  final String icas24;
  final String callsign;
  final String originCaountry;
  final int timePosition;
  final int lastContact;
  final double longitude;
  final double latitude;
  final double baroAltitude;
  final bool onGround;
  final double velocity;
  final double verticalRate;
  final String sensors;
  final double trueTract;
  final double geoAltituce;
  final String squawk;
  final bool spi;
  final int positionSource;

  AllState(
      {required this.icas24,
      required this.callsign,
      required this.originCaountry,
      required this.timePosition,
      required this.lastContact,
      required this.longitude,
      required this.latitude,
      required this.baroAltitude,
      required this.onGround,
      required this.velocity,
      required this.verticalRate,
      required this.sensors,
      required this.trueTract,
      required this.geoAltituce,
      required this.squawk,
      required this.spi,
      required this.positionSource});

  factory AllState.fromJson(dynamic json) {
    return AllState(
      icas24: json[0],
      callsign: (null != json[1]) ? json[1] : null,
      originCaountry: json[2],
      timePosition: (null != json[3]) ? json[3] : null,
      lastContact: json[4],
      longitude: (null != json[5]) ? json[5] : null,
      latitude: (null != json[6]) ? json[6] : null,
      baroAltitude: (null != json[7]) ? json[7] : null,
      onGround: json[8],
      velocity: (null != json[9]) ? json[9] : null,
      trueTract: (null != json[10]) ? json[10] : null,
      verticalRate: (null != json[11]) ? json[11] : null,
      sensors: (null != json[12]) ? json[12] : null,
      geoAltituce: (null != json[13]) ? json[13] : null,
      squawk: (null != json[14]) ? json[14] : null,
      spi: (null != json[15]) ? json[15] : null,
      positionSource: (null != json[16]) ? json[16] : null,
    );
  }
}
