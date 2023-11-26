class EventModel {
  String? eventId; // New property for the unique identifier
  String? eventName;
  String? eventCategory;
  String? eventDate;
  String? eventTime;
  String? eventDetails;
  String? eventImageUrl;
  bool? eventRegistrations;
  bool? featuredEvent;
  bool? onFront;
  String? eventRatings;
  String? eventCreatedBy;
  String? eventDirections;
  String? venueName;
  String? venueImageUrl;

  EventModel({
    this.eventId, // Updated constructor
    this.eventName,
    this.featuredEvent,
    this.eventCategory,
    this.onFront,
    this.eventDate,
    this.eventTime,
    this.eventDetails,
    this.eventImageUrl,
    this.eventRegistrations,
    this.eventRatings,
    this.eventCreatedBy,
    this.eventDirections,
    this.venueName,
    this.venueImageUrl,
  });

  EventModel.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId']; // Updated fromJson method
    eventName = json['eventName'];
    eventCategory = json['eventCategory'];
    eventDate = json['eventDate'];
    eventTime = json['eventTime'];
    eventDetails = json['eventDetails'];
    onFront = json['onFront'];
    eventImageUrl = json['eventImageUrl'];
    eventRegistrations = json['eventRegistrations'];
    featuredEvent = json['featuredEvent'];
    eventRatings = json['eventRatings'];
    eventCreatedBy = json['eventCreatedBy'];
    eventDirections = json['eventDirections'];
    venueName = json['venueName'];
    venueImageUrl = json['venueImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventId'] = this.eventId; // Updated toJson method
    data['eventName'] = this.eventName;
    data['eventCategory'] = this.eventCategory;
    data['eventDate'] = this.eventDate;
    data['eventTime'] = this.eventTime;
    data['eventDetails'] = this.eventDetails;
    data['eventImageUrl'] = this.eventImageUrl;
    data['eventRegistrations'] = this.eventRegistrations;
    data['featuredEvent'] = this.featuredEvent;
    data['eventRatings'] = this.eventRatings;
    data['eventCreatedBy'] = this.eventCreatedBy;
    data['eventDirections'] = this.eventDirections;
    data['venueName'] = this.venueName;
    data['onFront'] = this.onFront;
    data['venueImageUrl'] = this.venueImageUrl;
    return data;
  }
}
