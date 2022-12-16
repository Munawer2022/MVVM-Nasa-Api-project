class NeoWs {
  Links? links;
  Page? page;
  List<NearEarthObjects>? nearEarthObjects;

  NeoWs({this.links, this.page, this.nearEarthObjects});

  NeoWs.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    page = json['page'] != null ? new Page.fromJson(json['page']) : null;
    if (json['near_earth_objects'] != null) {
      nearEarthObjects = <NearEarthObjects>[];
      json['near_earth_objects'].forEach((v) {
        nearEarthObjects!.add(new NearEarthObjects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.page != null) {
      data['page'] = this.page!.toJson();
    }
    if (this.nearEarthObjects != null) {
      data['near_earth_objects'] =
          this.nearEarthObjects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Links {
  String? next;
  String? self;

  Links({this.next, this.self});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'];
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['next'] = this.next;
    data['self'] = this.self;
    return data;
  }
}

class Page {
  int? size;
  int? totalElements;
  int? totalPages;
  int? number;

  Page({this.size, this.totalElements, this.totalPages, this.number});

  Page.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    totalElements = json['total_elements'];
    totalPages = json['total_pages'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['total_elements'] = this.totalElements;
    data['total_pages'] = this.totalPages;
    data['number'] = this.number;
    return data;
  }
}

class NearEarthObjects {
  Links? links;
  String? id;
  String? neoReferenceId;
  String? name;
  String? nameLimited;
  String? designation;
  String? nasaJplUrl;
  double? absoluteMagnitudeH;
  EstimatedDiameter? estimatedDiameter;
  bool? isPotentiallyHazardousAsteroid;
  List<CloseApproachData>? closeApproachData;
  OrbitalData? orbitalData;
  bool? isSentryObject;

  NearEarthObjects(
      {this.links,
      this.id,
      this.neoReferenceId,
      this.name,
      this.nameLimited,
      this.designation,
      this.nasaJplUrl,
      this.absoluteMagnitudeH,
      this.estimatedDiameter,
      this.isPotentiallyHazardousAsteroid,
      this.closeApproachData,
      this.orbitalData,
      this.isSentryObject});

  NearEarthObjects.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    id = json['id'];
    neoReferenceId = json['neo_reference_id'];
    name = json['name'];
    nameLimited = json['name_limited'];
    designation = json['designation'];
    nasaJplUrl = json['nasa_jpl_url'];
    absoluteMagnitudeH = json['absolute_magnitude_h'];
    estimatedDiameter = json['estimated_diameter'] != null
        ? new EstimatedDiameter.fromJson(json['estimated_diameter'])
        : null;
    isPotentiallyHazardousAsteroid = json['is_potentially_hazardous_asteroid'];
    if (json['close_approach_data'] != null) {
      closeApproachData = <CloseApproachData>[];
      json['close_approach_data'].forEach((v) {
        closeApproachData!.add(new CloseApproachData.fromJson(v));
      });
    }
    orbitalData = json['orbital_data'] != null
        ? new OrbitalData.fromJson(json['orbital_data'])
        : null;
    isSentryObject = json['is_sentry_object'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    data['id'] = this.id;
    data['neo_reference_id'] = this.neoReferenceId;
    data['name'] = this.name;
    data['name_limited'] = this.nameLimited;
    data['designation'] = this.designation;
    data['nasa_jpl_url'] = this.nasaJplUrl;
    data['absolute_magnitude_h'] = this.absoluteMagnitudeH;
    if (this.estimatedDiameter != null) {
      data['estimated_diameter'] = this.estimatedDiameter!.toJson();
    }
    data['is_potentially_hazardous_asteroid'] =
        this.isPotentiallyHazardousAsteroid;
    if (this.closeApproachData != null) {
      data['close_approach_data'] =
          this.closeApproachData!.map((v) => v.toJson()).toList();
    }
    if (this.orbitalData != null) {
      data['orbital_data'] = this.orbitalData!.toJson();
    }
    data['is_sentry_object'] = this.isSentryObject;
    return data;
  }
}

//Links//1
class LinksSecond {
  String? self;

  LinksSecond({this.self});

  LinksSecond.fromJson(Map<String, dynamic> json) {
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    return data;
  }
}

class EstimatedDiameter {
  Kilometers? kilometers;
  Kilometers? meters;
  Kilometers? miles;
  Kilometers? feet;

  EstimatedDiameter({this.kilometers, this.meters, this.miles, this.feet});

  EstimatedDiameter.fromJson(Map<String, dynamic> json) {
    kilometers = json['kilometers'] != null
        ? new Kilometers.fromJson(json['kilometers'])
        : null;
    meters =
        json['meters'] != null ? new Kilometers.fromJson(json['meters']) : null;
    miles =
        json['miles'] != null ? new Kilometers.fromJson(json['miles']) : null;
    feet = json['feet'] != null ? new Kilometers.fromJson(json['feet']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kilometers != null) {
      data['kilometers'] = this.kilometers!.toJson();
    }
    if (this.meters != null) {
      data['meters'] = this.meters!.toJson();
    }
    if (this.miles != null) {
      data['miles'] = this.miles!.toJson();
    }
    if (this.feet != null) {
      data['feet'] = this.feet!.toJson();
    }
    return data;
  }
}

class Kilometers {
  double? estimatedDiameterMin;
  double? estimatedDiameterMax;

  Kilometers({this.estimatedDiameterMin, this.estimatedDiameterMax});

  Kilometers.fromJson(Map<String, dynamic> json) {
    estimatedDiameterMin = json['estimated_diameter_min'];
    estimatedDiameterMax = json['estimated_diameter_max'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['estimated_diameter_min'] = this.estimatedDiameterMin;
    data['estimated_diameter_max'] = this.estimatedDiameterMax;
    return data;
  }
}

class CloseApproachData {
  String? closeApproachDate;
  String? closeApproachDateFull;
  int? epochDateCloseApproach;
  RelativeVelocity? relativeVelocity;
  MissDistance? missDistance;
  String? orbitingBody;

  CloseApproachData(
      {this.closeApproachDate,
      this.closeApproachDateFull,
      this.epochDateCloseApproach,
      this.relativeVelocity,
      this.missDistance,
      this.orbitingBody});

  CloseApproachData.fromJson(Map<String, dynamic> json) {
    closeApproachDate = json['close_approach_date'];
    closeApproachDateFull = json['close_approach_date_full'];
    epochDateCloseApproach = json['epoch_date_close_approach'];
    relativeVelocity = json['relative_velocity'] != null
        ? new RelativeVelocity.fromJson(json['relative_velocity'])
        : null;
    missDistance = json['miss_distance'] != null
        ? new MissDistance.fromJson(json['miss_distance'])
        : null;
    orbitingBody = json['orbiting_body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['close_approach_date'] = this.closeApproachDate;
    data['close_approach_date_full'] = this.closeApproachDateFull;
    data['epoch_date_close_approach'] = this.epochDateCloseApproach;
    if (this.relativeVelocity != null) {
      data['relative_velocity'] = this.relativeVelocity!.toJson();
    }
    if (this.missDistance != null) {
      data['miss_distance'] = this.missDistance!.toJson();
    }
    data['orbiting_body'] = this.orbitingBody;
    return data;
  }
}

class RelativeVelocity {
  String? kilometersPerSecond;
  String? kilometersPerHour;
  String? milesPerHour;

  RelativeVelocity(
      {this.kilometersPerSecond, this.kilometersPerHour, this.milesPerHour});

  RelativeVelocity.fromJson(Map<String, dynamic> json) {
    kilometersPerSecond = json['kilometers_per_second'];
    kilometersPerHour = json['kilometers_per_hour'];
    milesPerHour = json['miles_per_hour'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kilometers_per_second'] = this.kilometersPerSecond;
    data['kilometers_per_hour'] = this.kilometersPerHour;
    data['miles_per_hour'] = this.milesPerHour;
    return data;
  }
}

class MissDistance {
  String? astronomical;
  String? lunar;
  String? kilometers;
  String? miles;

  MissDistance({this.astronomical, this.lunar, this.kilometers, this.miles});

  MissDistance.fromJson(Map<String, dynamic> json) {
    astronomical = json['astronomical'];
    lunar = json['lunar'];
    kilometers = json['kilometers'];
    miles = json['miles'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['astronomical'] = this.astronomical;
    data['lunar'] = this.lunar;
    data['kilometers'] = this.kilometers;
    data['miles'] = this.miles;
    return data;
  }
}

class OrbitalData {
  String? orbitId;
  String? orbitDeterminationDate;
  String? firstObservationDate;
  String? lastObservationDate;
  int? dataArcInDays;
  int? observationsUsed;
  String? orbitUncertainty;
  String? minimumOrbitIntersection;
  String? jupiterTisserandInvariant;
  String? epochOsculation;
  String? eccentricity;
  String? semiMajorAxis;
  String? inclination;
  String? ascendingNodeLongitude;
  String? orbitalPeriod;
  String? perihelionDistance;
  String? perihelionArgument;
  String? aphelionDistance;
  String? perihelionTime;
  String? meanAnomaly;
  String? meanMotion;
  String? equinox;
  OrbitClass? orbitClass;

  OrbitalData(
      {this.orbitId,
      this.orbitDeterminationDate,
      this.firstObservationDate,
      this.lastObservationDate,
      this.dataArcInDays,
      this.observationsUsed,
      this.orbitUncertainty,
      this.minimumOrbitIntersection,
      this.jupiterTisserandInvariant,
      this.epochOsculation,
      this.eccentricity,
      this.semiMajorAxis,
      this.inclination,
      this.ascendingNodeLongitude,
      this.orbitalPeriod,
      this.perihelionDistance,
      this.perihelionArgument,
      this.aphelionDistance,
      this.perihelionTime,
      this.meanAnomaly,
      this.meanMotion,
      this.equinox,
      this.orbitClass});

  OrbitalData.fromJson(Map<String, dynamic> json) {
    orbitId = json['orbit_id'];
    orbitDeterminationDate = json['orbit_determination_date'];
    firstObservationDate = json['first_observation_date'];
    lastObservationDate = json['last_observation_date'];
    dataArcInDays = json['data_arc_in_days'];
    observationsUsed = json['observations_used'];
    orbitUncertainty = json['orbit_uncertainty'];
    minimumOrbitIntersection = json['minimum_orbit_intersection'];
    jupiterTisserandInvariant = json['jupiter_tisserand_invariant'];
    epochOsculation = json['epoch_osculation'];
    eccentricity = json['eccentricity'];
    semiMajorAxis = json['semi_major_axis'];
    inclination = json['inclination'];
    ascendingNodeLongitude = json['ascending_node_longitude'];
    orbitalPeriod = json['orbital_period'];
    perihelionDistance = json['perihelion_distance'];
    perihelionArgument = json['perihelion_argument'];
    aphelionDistance = json['aphelion_distance'];
    perihelionTime = json['perihelion_time'];
    meanAnomaly = json['mean_anomaly'];
    meanMotion = json['mean_motion'];
    equinox = json['equinox'];
    orbitClass = json['orbit_class'] != null
        ? new OrbitClass.fromJson(json['orbit_class'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orbit_id'] = this.orbitId;
    data['orbit_determination_date'] = this.orbitDeterminationDate;
    data['first_observation_date'] = this.firstObservationDate;
    data['last_observation_date'] = this.lastObservationDate;
    data['data_arc_in_days'] = this.dataArcInDays;
    data['observations_used'] = this.observationsUsed;
    data['orbit_uncertainty'] = this.orbitUncertainty;
    data['minimum_orbit_intersection'] = this.minimumOrbitIntersection;
    data['jupiter_tisserand_invariant'] = this.jupiterTisserandInvariant;
    data['epoch_osculation'] = this.epochOsculation;
    data['eccentricity'] = this.eccentricity;
    data['semi_major_axis'] = this.semiMajorAxis;
    data['inclination'] = this.inclination;
    data['ascending_node_longitude'] = this.ascendingNodeLongitude;
    data['orbital_period'] = this.orbitalPeriod;
    data['perihelion_distance'] = this.perihelionDistance;
    data['perihelion_argument'] = this.perihelionArgument;
    data['aphelion_distance'] = this.aphelionDistance;
    data['perihelion_time'] = this.perihelionTime;
    data['mean_anomaly'] = this.meanAnomaly;
    data['mean_motion'] = this.meanMotion;
    data['equinox'] = this.equinox;
    if (this.orbitClass != null) {
      data['orbit_class'] = this.orbitClass!.toJson();
    }
    return data;
  }
}

class OrbitClass {
  String? orbitClassType;
  String? orbitClassDescription;
  String? orbitClassRange;

  OrbitClass(
      {this.orbitClassType, this.orbitClassDescription, this.orbitClassRange});

  OrbitClass.fromJson(Map<String, dynamic> json) {
    orbitClassType = json['orbit_class_type'];
    orbitClassDescription = json['orbit_class_description'];
    orbitClassRange = json['orbit_class_range'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orbit_class_type'] = this.orbitClassType;
    data['orbit_class_description'] = this.orbitClassDescription;
    data['orbit_class_range'] = this.orbitClassRange;
    return data;
  }
}
