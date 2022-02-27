class StartupData {
  Sector? sector;

  StartupData({this.sector});

  factory StartupData.fromJson(Map<String, dynamic> json) {
    return new StartupData(
        sector: Sector.formJson(json['Sector'] as Map<String, dynamic>));
  }
}

class Sector {
  List<FoodBeverages>? foodBeverages;
  List<MobileAndTelecommunications>? mobile_Telecommunications;
  List<Environmental_Services_Equipment>? environmental_Services_Equipment;
  List<Software>? software;
  List<Internet>? internet;
  List<Consumer_Products_Services>? consumer_Products_Services;
  List<Financial>? financial;
  List<Industrial>? industrial;
  List<Healthcare>? healthcare;
  List<Automotive_Transportation>? automotive_Transportation;
  List<Electronics>? electronics;
  List<Leisure>? leisure;
  List<Business_Products_Services>? business_Products_Services;
  List<Energy_Utilities>? energy_Utilities;
  List<Computer_Hardware_Services>? computer_Hardware_Services;
  List<Agriculture>? agriculture;
  List<Retail>? retail;
  List<Risk_Security>? risk_Security;
  List<Media>? media;

  Sector({
    this.foodBeverages,
    this.mobile_Telecommunications,
    this.environmental_Services_Equipment,
    this.software,
    this.internet,
    this.consumer_Products_Services,
    this.financial,
    this.industrial,
    this.healthcare,
    this.automotive_Transportation,
    this.electronics,
    this.leisure,
    this.business_Products_Services,
    this.energy_Utilities,
    this.computer_Hardware_Services,
    this.agriculture,
    this.retail,
    this.risk_Security,
    this.media
  });

  factory Sector.formJson(Map<String, dynamic> json) {
    final foodBeverages_List = json['Food & Beverages'] as List;
    final mobile_Telecommunications_List = json['Mobile & Telecommunications'] as List;
    final environmental_Services_Equipment_List = json['Environmental Services & Equipment'] as List;
    final software_List = json['Software (non-internet/mobile)'] as List;
    final internet_List = json['Internet'] as List;
    final consumer_Products_Services_List = json['Consumer Products & Services'] as List;
    final financial_List = json['Financial'] as List;
    final industrial_List = json['Industrial'] as List;
    final healthcare_List = json['Healthcare'] as List;
    final automotive_Transportation_List = json['Automotive & Transportation'] as List;
    final electronics_List = json['Electronics'] as List;
    final leisure_List = json['Leisure'] as List;
    final business_Products_Services_List = json['Business Products & Services'] as List;
    final energy_Utilities_List = json['Energy & Utilities'] as List;
    final computer_Hardware_Services_List = json['Computer Hardware & Services'] as List;
    final agriculture_List = json['Agriculture'] as List;
    final retail_List = json['Retail (non-internet/mobile)'] as List;
    final risk_Security_List = json['Risk & Security'] as List;
    final media_List = json['Media (Traditional)'] as List;


    List<FoodBeverages> food_list = foodBeverages_List.map((e) => FoodBeverages.formJson(e)).toList();
    List<MobileAndTelecommunications> mobile_list = mobile_Telecommunications_List.map((e) => MobileAndTelecommunications.formJson(e)).toList();
    List<Environmental_Services_Equipment> environmental_list = environmental_Services_Equipment_List.map((e) => Environmental_Services_Equipment.formJson(e)).toList();
    List<Software> software_list = software_List.map((e) => Software.formJson(e)).toList();
    List<Internet> internet_list = internet_List.map((e) => Internet.formJson(e)).toList();
    List<Consumer_Products_Services> consumer_list = consumer_Products_Services_List.map((e) => Consumer_Products_Services.formJson(e)).toList();
    List<Financial> financial_list = financial_List.map((e) => Financial.formJson(e)).toList();
    List<Industrial> industrial_list = industrial_List.map((e) => Industrial.formJson(e)).toList();
    List<Healthcare> healthcare_list = healthcare_List.map((e) => Healthcare.formJson(e)).toList();
    List<Automotive_Transportation> automotive_list = automotive_Transportation_List.map((e) => Automotive_Transportation.formJson(e)).toList();
    List<Electronics> electronics_list = electronics_List.map((e) => Electronics.formJson(e)).toList();
    List<Leisure> leisure_list = leisure_List.map((e) => Leisure.formJson(e)).toList();
    List<Business_Products_Services> business_list = business_Products_Services_List.map((e) => Business_Products_Services.formJson(e)).toList();
    List<Energy_Utilities> energy_list = energy_Utilities_List.map((e) => Energy_Utilities.formJson(e)).toList();
    List<Computer_Hardware_Services> computer_list = computer_Hardware_Services_List.map((e) => Computer_Hardware_Services.formJson(e)).toList();
    List<Agriculture> agriculture_list = agriculture_List.map((e) => Agriculture.formJson(e)).toList();
    List<Retail> retail_list = retail_List.map((e) => Retail.formJson(e)).toList();
    List<Risk_Security> risk_list = risk_Security_List.map((e) => Risk_Security.formJson(e)).toList();
    List<Media> media_list = media_List.map((e) => Media.formJson(e)).toList();

    return new Sector(
      foodBeverages: food_list,
      mobile_Telecommunications: mobile_list,
      environmental_Services_Equipment: environmental_list,
      software: software_list,
      internet: internet_list,
      consumer_Products_Services: consumer_list,
      financial: financial_list,
      industrial: industrial_list,
      healthcare: healthcare_list,
      automotive_Transportation: automotive_list,
      electronics: electronics_list,
      leisure: leisure_list,
      business_Products_Services: business_list,
      energy_Utilities: energy_list,
      computer_Hardware_Services: computer_list,
      agriculture: agriculture_list,
      retail: retail_list,
      risk_Security: risk_list,
      media: media_list
    );
  }
}

class FoodBeverages {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  FoodBeverages({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory FoodBeverages.formJson(Map<String, dynamic> json) {
    return new FoodBeverages(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class MobileAndTelecommunications {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  MobileAndTelecommunications({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory MobileAndTelecommunications.formJson(Map<String, dynamic> json) {
    return new MobileAndTelecommunications(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Environmental_Services_Equipment {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Environmental_Services_Equipment({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Environmental_Services_Equipment.formJson(Map<String, dynamic> json) {
    return new Environmental_Services_Equipment(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Software {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Software({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Software.formJson(Map<String, dynamic> json) {
    return new Software(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Internet {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Internet({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Internet.formJson(Map<String, dynamic> json) {
    return new Internet(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Consumer_Products_Services {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Consumer_Products_Services({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Consumer_Products_Services.formJson(Map<String, dynamic> json) {
    return new Consumer_Products_Services(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Financial {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Financial({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Financial.formJson(Map<String, dynamic> json) {
    return new Financial(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Industrial {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Industrial({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Industrial.formJson(Map<String, dynamic> json) {
    return new Industrial(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Healthcare {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Healthcare({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Healthcare.formJson(Map<String, dynamic> json) {
    return new Healthcare(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Automotive_Transportation {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Automotive_Transportation({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Automotive_Transportation.formJson(Map<String, dynamic> json) {
    return new Automotive_Transportation(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Electronics {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Electronics({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Electronics.formJson(Map<String, dynamic> json) {
    return new Electronics(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Leisure {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Leisure({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Leisure.formJson(Map<String, dynamic> json) {
    return new Leisure(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Business_Products_Services {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Business_Products_Services({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Business_Products_Services.formJson(Map<String, dynamic> json) {
    return new Business_Products_Services(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Energy_Utilities {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Energy_Utilities({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Energy_Utilities.formJson(Map<String, dynamic> json) {
    return new Energy_Utilities(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Computer_Hardware_Services {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Computer_Hardware_Services({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Computer_Hardware_Services.formJson(Map<String, dynamic> json) {
    return new Computer_Hardware_Services(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Agriculture {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Agriculture({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Agriculture.formJson(Map<String, dynamic> json) {
    return new Agriculture(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Retail {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Retail({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Retail.formJson(Map<String, dynamic> json) {
    return new Retail(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Risk_Security {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Risk_Security({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Risk_Security.formJson(Map<String, dynamic> json) {
    return new Risk_Security(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
class Media {
  String? id; //Api datatype integer
  String? companyName;
  String? url;
  String? description;
  String? industry;
  String? country;
  String? companyId; //Api datatype integer
  String? foundedYear;
  String? allInvestor;
  String? city;
  String? latestFundingRound;
  dynamic? totalFunding;
  String? subIndustry;

  Media({
    this.id, //Api datatype integer
    this.companyName,
    this.url,
    this.description,
    this.industry,
    this.country,
    this.companyId, //Api datatype integer
    this.foundedYear,
    this.allInvestor,
    this.city,
    this.latestFundingRound,
    this.totalFunding,
    this.subIndustry
  });

  factory Media.formJson(Map<String, dynamic> json) {
    return new Media(
      id: json['Id'].toString(),
      companyName: json['Companies'],
      url: json['URL'],
      description: json['Description'],
      industry: json['Industry'],
      country: json['Country'],
      companyId: json['Company ID'].toString(),
      foundedYear: json['Founded Year'],
      allInvestor: json['All Investors'],
      city: json['City'],
      latestFundingRound: json['Latest Funding Round'],
      totalFunding: json['Total Funding'],
      subIndustry: json['Sub-Industry'],
    );
  }
}
