

class JasonDartClass {
  int pid;
  int catid;
  String pname;
  Null ts;
  String sliceable;
  String vegan;
  String active;
  String dowsun;
  String dowmon;
  String dowtue;
  String dowwed;
  String dowthu;
  String dowfri;
  String dowsat;
  double retailp;
  int qty;
  String activemobile;

  JasonDartClass(
      {this.pid,
      this.catid,
      this.pname,
      this.ts,
      this.sliceable,
      this.vegan,
      this.active,
      this.dowsun,
      this.dowmon,
      this.dowtue,
      this.dowwed,
      this.dowthu,
      this.dowfri,
      this.dowsat,
      this.retailp,
      this.qty,
      this.activemobile});

  JasonDartClass.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    catid = json['catid'];
    pname = json['pname'];
    ts = json['ts'];
    sliceable = json['sliceable'];
    vegan = json['vegan'];
    active = json['active'];
    dowsun = json['dowsun'];
    dowmon = json['dowmon'];
    dowtue = json['dowtue'];
    dowwed = json['dowwed'];
    dowthu = json['dowthu'];
    dowfri = json['dowfri'];
    dowsat = json['dowsat'];
    retailp = json['retailp'];
    qty = json['qty'];
    activemobile = json['activemobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this.pid;
    data['catid'] = this.catid;
    data['pname'] = this.pname;
    data['ts'] = this.ts;
    data['sliceable'] = this.sliceable;
    data['vegan'] = this.vegan;
    data['active'] = this.active;
    data['dowsun'] = this.dowsun;
    data['dowmon'] = this.dowmon;
    data['dowtue'] = this.dowtue;
    data['dowwed'] = this.dowwed;
    data['dowthu'] = this.dowthu;
    data['dowfri'] = this.dowfri;
    data['dowsat'] = this.dowsat;
    data['retailp'] = this.retailp;
    data['qty'] = this.qty;
    data['activemobile'] = this.activemobile;
    return data;
  }
}