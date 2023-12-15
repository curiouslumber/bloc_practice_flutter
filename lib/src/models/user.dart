class AccountUser {
  static String uid = "";
  static String avatarUrl = "";
  static String name = "";
  static String email = "";

  static void updateInfo(
      String newuid, String newavatarUrl, String newName, String newEmail) {
    uid = newuid;
    avatarUrl = newavatarUrl;
    name = newName;
    email = newEmail;
  }
}
