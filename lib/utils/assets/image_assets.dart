class ImageAssets {
  const ImageAssets._();

  //JPG
  static String get personImg => "search_screen_image".jpg;

  //SVG
  static String get iqSvg => "iq".svg;
  static String get apealSvg => "apeal".svg;
  static String get socialSvg => "social".svg;
  static String get humanitySvg => "humanity".svg;
  static String get faceBook => "facebook".svg;
  static String get leftVibeSvg => "left_vibe".svg;
  static String get rightVibeSvg => "right_vibe".svg;
  static String get searchSvg => "search".svg;

  //png
  static String get loginImage => "login_image".png;
  static String get socialMedia => "social_media".png;
  static String get people => "people".png;
  static String get peopleGrey => "peoplegrey".png;
  static String get content => "subscription".png;
  static String get contentGrey => "subscriptiongrey".png;
  static String get community => "social-care".png;
  static String get communityGrey => "social-caregrey".png;
  static String get shop => "box".png;
  static String get shopGrey => "boxgrey".png;
  //ItemSection
  static String get truth => "truth".png;
  static String get truthgrey => "truthgrey".png;
  static String get fun => "fun".png;
  static String get fungrey => "fungrey".png;
  static String get debate => "debate".png;
  static String get debateGrey => "debategrey".png;
  static String get oppertunity => "oppertunity".png;
  static String get oppertunityGrey => "oppertunitygrey".png;
}

extension on String {
  String get png => "assets/images/$this.png";
  String get svg => "assets/icons/$this.svg";
  String get jpg => "assets/images/$this.jpg";
}
