class VenueModel {
  String? venueId; // New property for the unique identifier
  String? venueName;
  String? phoneNumber;
  String? venueDetails;
  String? venueImageUrl;
  String? venueCreatedBy;
  String? eventDirections;
  String? createdByImageUrl;
  bool? topRated;

  VenueModel({
    this.venueId, // Updated constructor
    this.venueName,
    this.phoneNumber,
    this.venueDetails,
    this.venueImageUrl,
    this.venueCreatedBy,
    this.eventDirections,
    this.createdByImageUrl,
    this.topRated,
  });

  VenueModel.fromJson(Map<String, dynamic> json) {
    venueId = json['venueId']; // Updated fromJson method
    venueName = json['venueName'];
    phoneNumber = json['phoneNumber'];
    venueDetails = json['venueDetails'];
    venueImageUrl = json['venueImageUrl'];
    venueCreatedBy = json['venueCreatedBy'];
    eventDirections = json['eventDirections'];
    createdByImageUrl = json['createdByImageUrl'];
    topRated = json['topRated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['venueId'] = this.venueId; // Updated toJson method
    data['venueName'] = this.venueName;
    data['phoneNumber'] = this.phoneNumber;
    data['venueDetails'] = this.venueDetails;
    data['venueImageUrl'] = this.venueImageUrl;
    data['venueCreatedBy'] = this.venueCreatedBy;
    data['eventDirections'] = this.eventDirections;
    data['createdByImageUrl'] = this.createdByImageUrl;
    data['topRated'] = this.topRated;
    return data;
  }
}
