class AccountInfo {
  final String username;
  final String slug;
  final String email;
  final String? avatarURL;
  final String? createdAt;
  final bool? hasUsedOrganizationTrial;
  final int? dataID;
  final String? paymentProcessor;

  AccountInfo(
      {required this.username,
      required this.slug,
      required this.email,
      this.avatarURL,
      this.createdAt,
      this.hasUsedOrganizationTrial,
      this.dataID,
      this.paymentProcessor});

  factory AccountInfo.fromJson(Map<String, dynamic> json) {
    return AccountInfo(
        username: json['username'],
        slug: json['slug'],
        email: json['email'],
        avatarURL: json['avatar_url'],
        createdAt: json['created_at'],
        hasUsedOrganizationTrial: json['has_used_organization_trial'],
        dataID: json['data_id'],
        paymentProcessor: json['payment_processor']);
  }
}
