class UserModel {
  final String name;
  final String uid;
  final String about;
  final String profilePic;
  final bool isOnline;
  final String? phoneNumber;
  final String? email;
  final List<String> groupId;

  UserModel({
    required this.name,
    required this.uid,
    required this.about,
    required this.profilePic,
    required this.isOnline,
    required this.phoneNumber,
    required this.email,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uid': uid,
      'about': about,
      'profilePic': profilePic,
      'isOnline': isOnline,
      'phoneNumber': phoneNumber,
      'groupId': groupId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      uid: map['uid'] ?? '',
      about: map['about'] ?? '',
      profilePic: map['profilePic'] ?? '',
      isOnline: map['isOnline'] ?? false,
      phoneNumber: map['phoneNumber'] ?? '',
      email: map['email'] ?? '',
      groupId: List<String>.from(map['groupId']),
    );
  }
}
