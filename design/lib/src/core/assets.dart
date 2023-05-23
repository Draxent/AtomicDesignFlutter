import 'package:flutter/material.dart';

import 'style.dart';

abstract class Images {
  static const String _root = 'assets/images';
  static const String _jpg = '.jpg';
  static const String _png = '.png';

  static Image get bannerBg => image('$_root/banner_bg$_jpg');
  static Image get menuBg => image('$_root/menu_bg$_jpg');
  static Image get footerBg => image('$_root/footer_bg$_jpg');
  static Image get logo => image('$_root/logo$_png');
  static double titleStartHeight = 23;
  static Image get titleStart => image('$_root/title_start$_png');

  static const String _about = '$_root/about';
  static Image get aboutBg => image('$_about/about_bg$_jpg');
  static Image get aboutIcon1 => image('$_about/about_icon1$_png');
  static Image get aboutIcon2 => image('$_about/about_icon2$_png');
  static Image get aboutImage1 => image('$_about/image1$_jpg');
  static Image get aboutImage2 => image('$_about/image2$_jpg');
  static Image get aboutSeparator => image('$_about/separator$_png');

  static const String _blog = '$_root/blog';
  static Image get blogCalendar => image('$_blog/calendar$_png');
  static Image get blogImage1 => image('$_blog/image1$_png');
  static Image get blogImage2 => image('$_blog/image2$_png');
  static Image get blogImage3 => image('$_blog/image3$_png');

  static const String _button = '$_root/button';
  static const buttonSize = Size(196, 60);
  static Image get buttonBg1 => image('$_button/button_bg1$_png');
  static Image get buttonBg1Hover => image('$_button/button_bg1_hover$_png');
  static Image get buttonBg2 => image('$_button/button_bg2$_png');
  static Image get buttonBg2Hover => image('$_button/button_bg2_hover$_png');

  static const String _contacts = '$_root/contacts';
  static Image get contactsClientImg1 => image('$_contacts/client_img1$_png');
  static Image get contactsClientLogo1 => image('$_contacts/client_logo1$_png');
  static Image get contactsClientImg2 => image('$_contacts/client_img2$_png');
  static Image get contactsClientLogo2 => image('$_contacts/client_logo2$_png');
  static Image get contactsClientImg3 => image('$_contacts/client_img3$_png');
  static Image get contactsClientLogo3 => image('$_contacts/client_logo3$_png');
  static Image get contactsClientImg4 => image('$_contacts/client_img4$_png');
  static Image get contactsClientLogo4 => image('$_contacts/client_logo4$_png');

  static const String _projects = '$_root/projects';
  static Image get project1 => image('$_projects/project1$_png');
  static Image get project2 => image('$_projects/project2$_png');
  static Image get project3 => image('$_projects/project3$_png');
  static Image get project4 => image('$_projects/project4$_png');
  static Image get project5 => image('$_projects/project5$_png');

  static const String _services = '$_root/services';
  static Image get service1 => image('$_services/service1$_png');
  static Image get service2 => image('$_services/service2$_png');
  static Image get service3 => image('$_services/service3$_png');
  static Image get service4 => image('$_services/service4$_png');

  static const String _social = '$_root/social';
  static Image get socialCall => image('$_social/call$_png');
  static Image get socialEmail => image('$_social/email$_png');
  static Image get socialFacebook => image('$_social/facebook$_png');
  static Image get socialFacebook2 => image('$_social/facebook2$_png');
  static Image get socialInstagram => image('$_social/instagram$_png');
  static Image get socialInstagram2 => image('$_social/instagram2$_png');
  static Image get socialLinkdin => image('$_social/linkdin$_png');
  static Image get socialTime => image('$_social/time$_png');
  static Image get socialTwitter => image('$_social/twitter$_png');
  static Image get socialTwitter2 => image('$_social/twitter2$_png');

  static const String _team = '$_root/team';
  static Image get team1 => image('$_team/team1$_png');
  static Image get team2 => image('$_team/team2$_png');
  static Image get team3 => image('$_team/team3$_png');

  static const String _testimonials = '$_root/testimonials';
  static Image get testimonialsNext => image('$_testimonials/next$_png');
  static Image get testimonialsPrevious =>
      image('$_testimonials/previous$_png');
  static Image get testimonialsQuote => image('$_testimonials/quote$_png');
  static Image get testimonialsStar => image('$_testimonials/star$_png');
  static Image get testimonialsUser1 => image('$_testimonials/user1$_png');
  static Image get testimonialsUser2 => image('$_testimonials/user2$_png');

  static const String _whyUs = '$_root/why_us';
  static Image get whyUsIcon1 => image('$_whyUs/icon1$_png');
  static Image get whyUsIcon2 => image('$_whyUs/icon2$_png');
  static Image get whyUsIcon3 => image('$_whyUs/icon3$_png');
  static Image get whyUsIcon4 => image('$_whyUs/icon4$_png');
  static Image get whyUsIcon5 => image('$_whyUs/icon5$_png');
  static Image get whyUsIcon6 => image('$_whyUs/icon6$_png');
  static Image get whyUsImage => image('$_whyUs/image$_png');
  static Image get whyUsTagBg => image('$_whyUs/tag_bg$_png');
  static Image get whyUsTagIcon => image('$_whyUs/tag_icon$_png');

  static Image image(String path, {double? width, double? height}) =>
      Image.asset(
        package: Style.packageName,
        path,
        width: width,
        height: height,
        filterQuality: FilterQuality.high,
      );
}
