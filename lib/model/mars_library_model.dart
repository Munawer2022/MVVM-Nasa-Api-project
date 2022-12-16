class MarsLibrary {
  Collection? collection;

  MarsLibrary({this.collection});

  MarsLibrary.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null
        ? new Collection.fromJson(json['collection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collection != null) {
      data['collection'] = this.collection!.toJson();
    }
    return data;
  }
}

class Collection {
  String? version;
  String? href;
  List<Items>? items;
  Metadata? metadata;
  List<Links>? links;

  Collection({this.version, this.href, this.items, this.metadata, this.links});

  Collection.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    href = json['href'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['href'] = this.href;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? href;
  List<Data>? data;
  List<Links>? links;

  Items({this.href, this.data, this.links});

  Items.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? center;
  String? title;
  String? nasaId;
  String? dateCreated;
  List<String>? keywords;
  String? mediaType;
  String? description508;
  String? secondaryCreator;
  String? description;
  String? photographer;
  String? location;
  List<String>? album;

  Data(
      {this.center,
      this.title,
      this.nasaId,
      this.dateCreated,
      this.keywords,
      this.mediaType,
      this.description508,
      this.secondaryCreator,
      this.description,
      this.photographer,
      this.location,
      this.album});

  Data.fromJson(Map<String, dynamic> json) {
    center = json['center'];
    title = json['title'];
    nasaId = json['nasa_id'];
    dateCreated = json['date_created'];
    keywords = json['keywords'].cast<String>();
    mediaType = json['media_type'];
    description508 = json['description_508'];
    secondaryCreator = json['secondary_creator'];
    description = json['description'];
    photographer = json['photographer'];
    location = json['location'];
    album = json['album'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['center'] = this.center;
    data['title'] = this.title;
    data['nasa_id'] = this.nasaId;
    data['date_created'] = this.dateCreated;
    data['keywords'] = this.keywords;
    data['media_type'] = this.mediaType;
    data['description_508'] = this.description508;
    data['secondary_creator'] = this.secondaryCreator;
    data['description'] = this.description;
    data['photographer'] = this.photographer;
    data['location'] = this.location;
    data['album'] = this.album;
    return data;
  }
}

class Links {
  String? href;
  String? rel;
  String? render;

  Links({this.href, this.rel, this.render});

  Links.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    rel = json['rel'];
    render = json['render'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    data['rel'] = this.rel;
    data['render'] = this.render;
    return data;
  }
}

class Metadata {
  int? totalHits;

  Metadata({this.totalHits});

  Metadata.fromJson(Map<String, dynamic> json) {
    totalHits = json['total_hits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_hits'] = this.totalHits;
    return data;
  }
}

class SLinks {
  String? rel;
  String? prompt;
  String? href;

  SLinks({this.rel, this.prompt, this.href});

  SLinks.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    prompt = json['prompt'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rel'] = this.rel;
    data['prompt'] = this.prompt;
    data['href'] = this.href;
    return data;
  }
}
