class TLE {
  String? context;
  String? id;
  String? type;
  int? totalItems;
  List<Member>? member;
  Parameters? parameters;
  View? view;

  TLE(
      {this.context,
      this.id,
      this.type,
      this.totalItems,
      this.member,
      this.parameters,
      this.view});

  TLE.fromJson(Map<String, dynamic> json) {
    context = json['@context'];
    id = json['@id'];
    type = json['@type'];
    totalItems = json['totalItems'];
    if (json['member'] != null) {
      member = <Member>[];
      json['member'].forEach((v) {
        member!.add(new Member.fromJson(v));
      });
    }
    parameters = json['parameters'] != null
        ? new Parameters.fromJson(json['parameters'])
        : null;
    view = json['view'] != null ? new View.fromJson(json['view']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@context'] = this.context;
    data['@id'] = this.id;
    data['@type'] = this.type;
    data['totalItems'] = this.totalItems;
    if (this.member != null) {
      data['member'] = this.member!.map((v) => v.toJson()).toList();
    }
    if (this.parameters != null) {
      data['parameters'] = this.parameters!.toJson();
    }
    if (this.view != null) {
      data['view'] = this.view!.toJson();
    }
    return data;
  }
}

class Member {
  String? id;
  String? type;
  int? satelliteId;
  String? name;
  String? date;
  String? line1;
  String? line2;

  Member(
      {this.id,
      this.type,
      this.satelliteId,
      this.name,
      this.date,
      this.line1,
      this.line2});

  Member.fromJson(Map<String, dynamic> json) {
    id = json['@id'];
    type = json['@type'];
    satelliteId = json['satelliteId'];
    name = json['name'];
    date = json['date'];
    line1 = json['line1'];
    line2 = json['line2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@id'] = this.id;
    data['@type'] = this.type;
    data['satelliteId'] = this.satelliteId;
    data['name'] = this.name;
    data['date'] = this.date;
    data['line1'] = this.line1;
    data['line2'] = this.line2;
    return data;
  }
}

class Parameters {
  String? search;
  String? sort;
  String? sortDir;
  int? page;
  int? pageSize;

  Parameters({this.search, this.sort, this.sortDir, this.page, this.pageSize});

  Parameters.fromJson(Map<String, dynamic> json) {
    search = json['search'];
    sort = json['sort'];
    sortDir = json['sort-dir'];
    page = json['page'];
    pageSize = json['page-size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['search'] = this.search;
    data['sort'] = this.sort;
    data['sort-dir'] = this.sortDir;
    data['page'] = this.page;
    data['page-size'] = this.pageSize;
    return data;
  }
}

class View {
  String? id;
  String? type;
  String? first;
  String? next;
  String? last;

  View({this.id, this.type, this.first, this.next, this.last});

  View.fromJson(Map<String, dynamic> json) {
    id = json['@id'];
    type = json['@type'];
    first = json['first'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@id'] = this.id;
    data['@type'] = this.type;
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}
