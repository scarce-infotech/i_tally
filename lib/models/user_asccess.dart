class UserAcess{
  int? ID;
  String? Name;
  String? ControllerName;
  String? ActionName;
  int? OrderBy;
  int? ParentID;
  String? Icon;
  bool? IsActive;
  String? Object;
  bool? C ;
  bool? U;
  bool? R;
  bool? D;
  bool? P;
  bool? A;
  bool? E;
  bool? M;
  bool? TA;
  bool? CA;
  bool? F;

  UserAcess({
    this.ID,
    this.Name,
    this.ControllerName,
    this.ActionName,
    this.OrderBy,
    this.ParentID,
    this.Icon,
    this.IsActive,
    this.Object,
    this.C,
    this.U,
    this.R,
    this.D,
    this.P,
    this.A,
    this.E,
    this.M,
    this.TA,
    this.CA,
    this.F,
  });

  UserAcess.fromJson(Map<String, dynamic> json) {
    C  = json['C'];
    U  = json['U'];
    R  = json['R'];
    D  = json['D'];
    P  = json['P'];
    A  = json['A'];
    E  = json['E'];
    M  = json['M'];
    TA = json['TA'];
    CA = json['CA'];
    F  = json['F'];
  }

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['C'] = this.C;
    data['U'] = this.U;
    data['R'] = this.R;
    data['D'] = this.D;
    data['P'] = this.P;
    data['A'] = this.A;
    data['E'] = this.E;
    data['M'] = this.M;
    data['TA'] = this.TA;
    data['CA'] = this.CA;
    data['F'] = this.F;
    return data;
  }

}
