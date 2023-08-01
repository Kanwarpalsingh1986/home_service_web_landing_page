import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:service_app/helper/app_config_constants.dart';

enum ThemeIcon {
  tabHome,
  tabHomeSelected,
  tabService,
  tabServiceSelected,
  tabProduct,
  tabProductSelected,
  tabOrders,
  tabOrdersSelected,
  tabProfile,
  tabProfileSelected,
  tabCourse,
  tabCourseSelected,
  timeline,
  apple,
  google,
  paypal,
  stripe,
  razorpay,
  home,
  cart,
  setting,
  account,
  camera,
  gallery,
  wallpaper,
  darkMode,
  // cameraFront,
  // cameraRear,
  cameraSwitch,
  videoCameraOff,
  videoCamera,
  emptyCheckbox,
  selectedCheckbox,
  search,
  star,
  checkMark,
  sending,
  sent,
  delivered,
  read,
  edit,
  filterIcon,
  sort,
  logout,
  review,
  circle,
  circleOutline,
  multiplePosts,
  fav,
  favFilled,
  close,
  sticker,
  gif,
  checkMarkWithCircle,
  category,
  security,
  bike,
  clock,
  offer,
  orders,
  privacyPolicy,
  info,
  terms,
  add,
  selectedRadio,
  more,
  wallet,
  dashboard,
  nextArrow,
  backArrow,
  menuIcon,
  password,
  email,
  hidePwd,
  mobile,
  callEnd,
  name,
  showPwd,
  notification,
  notification_filled,
  discount,
  share,
  addressType,
  addressPin,
  plus,
  minus,
  avatar,
  card,
  thumbsUp,
  mic,
  micOff,
  book,
  help,
  about,
  play,
  stop,
  videoPost,
  delete,
  message,
  chat,
  closeCircle,
  bed,
  map,
  news,
  buildings,
  bathTub,
  area,
  send,
  fwd,
  reply,
  bookMark,
  lock,
  group,
  filledStar,
  eye,
  gift,
  calendar,
  download,
  pause,
  contacts,
  files,
  location,
  drawing,
  fullScreen,
  randomChat,
  selectionType,
  report,
  hide,
  addCircle,
  userGroup,
  public,
  request,
  unSelectedRadio,
  diamond,
  music,
  arrowUpward,
  arrowDownward,
}

class ThemeIconWidget extends StatelessWidget {
  final ThemeIcon icon;
  final double? size;
  final Color? color;

  const ThemeIconWidget(this.icon, {Key? key, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size ?? 20, child: getIcon(context));
  }

  Widget getIcon(BuildContext context) {
    switch (icon) {
      case ThemeIcon.tabHome:
        return SvgPicture.asset(
          'assets/tabs/home.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabHomeSelected:
        return SvgPicture.asset(
          'assets/tabs/home_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabService:
        return SvgPicture.asset(
          'assets/tabs/service.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabServiceSelected:
        return SvgPicture.asset(
          'assets/tabs/service_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabProduct:
        return SvgPicture.asset(
          'assets/tabs/shop.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabProductSelected:
        return SvgPicture.asset(
          'assets/tabs/shop_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabCourse:
        return SvgPicture.asset(
          'assets/tabs/course_video.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabCourseSelected:
        return SvgPicture.asset(
          'assets/tabs/course_video_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.timeline:
        return SvgPicture.asset(
          'assets/tabs/timeline.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabOrders:
        return SvgPicture.asset(
          'assets/tabs/bookings.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabOrdersSelected:
        return SvgPicture.asset(
          'assets/tabs/bookings_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabProfile:
        return SvgPicture.asset(
          'assets/tabs/profile.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.tabProfileSelected:
        return SvgPicture.asset(
          'assets/tabs/profile_selected.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.apple:
        return SvgPicture.asset(
          'assets/common/apple.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.google:
        return SvgPicture.asset(
          'assets/common/google.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.paypal:
        return SvgPicture.asset(
          'assets/common/paypal.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.stripe:
        return SvgPicture.asset(
          'assets/common/stripe.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.razorpay:
        return Image.asset(
          'assets/common/razorpay.png',
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.home:
        return Icon(
          Icons.home_max_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.cart:
        return Icon(
          Icons.shopping_cart_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.category:
        return Icon(
          Icons.category_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.setting:
        return Icon(
          Icons.settings_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.search:
        return Icon(
          Icons.search,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.star:
        return Icon(
          Icons.star,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.filledStar:
        return Icon(
          Icons.star,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.diamond:
        return Icon(
          Icons.diamond,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.checkMark:
        return Icon(
          Icons.check,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.edit:
        return Icon(
          Icons.edit_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.filterIcon:
        return Icon(
          Icons.filter_alt_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.sort:
        return Icon(
          Icons.sort,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.logout:
        return SvgPicture.asset(
          'assets/profile/logout.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.review:
        return Icon(
          Icons.library_books_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.circle:
        return Icon(
          Icons.circle,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.circleOutline:
        return Icon(
          Icons.circle_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.fav:
        return SvgPicture.asset(
          'assets/tabs/heart.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.favFilled:
        return SvgPicture.asset(
          'assets/tabs/heart_selected.svg',
          width: size ?? 20,
          height: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.close:
        return Icon(
          Icons.close,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.checkMarkWithCircle:
        return Icon(
          Icons.check_circle_outline,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.security:
        return Icon(
          Icons.security,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.bike:
        return Icon(
          Icons.delivery_dining_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.clock:
        return Icon(
          Icons.timer,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.calendar:
        return SvgPicture.asset(
          'assets/common/calendar.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.offer:
        return Icon(
          Icons.local_offer_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.orders:
        return Icon(
          Icons.list_alt_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.account:
        return SvgPicture.asset(
          'assets/tabs/profile.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.group:
        return Icon(
          Icons.group,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.privacyPolicy:
        return SvgPicture.asset(
          'assets/profile/privacy_policy.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.info:
        return Icon(
          Icons.info,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.terms:
        return Icon(
          Icons.verified_user_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.add:
        return Icon(
          Icons.add,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.selectedRadio:
        return Icon(
          Icons.radio_button_checked,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.unSelectedRadio:
        return Icon(
          Icons.radio_button_off_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.more:
        return Icon(
          Icons.more_horiz,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.wallet:
        return SvgPicture.asset(
          'assets/profile/wallet.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.dashboard:
        return Icon(
          Icons.dashboard,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.nextArrow:
        return Icon(
          Icons.arrow_forward_ios,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.backArrow:
        return Icon(
          Icons.arrow_back_ios,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.menuIcon:
        return Icon(
          Icons.menu,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.eye:
        return Icon(
          Icons.remove_red_eye,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.password:
        return SvgPicture.asset(
          'assets/profile/password.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.email:
        return Icon(
          Icons.email_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.showPwd:
        return Icon(
          Icons.visibility_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.hidePwd:
        return Icon(
          Icons.visibility_off_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.mobile:
        return Icon(
          Icons.phone_enabled_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.name:
        return Icon(
          Icons.person_outline,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.notification_filled:
        return SvgPicture.asset(
          'assets/tabs/notification.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.notification:
        return SvgPicture.asset(
          'assets/tabs/notification_outlined.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.discount:
        return Icon(
          Icons.local_offer_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.share:
        return Icon(
          Icons.share_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.addressType:
        return Icon(
          Icons.location_city_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.plus:
        return Icon(
          Icons.add,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.minus:
        return Icon(
          Icons.remove,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.addressPin:
        return SvgPicture.asset(
          'assets/icons/address.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.avatar:
        return Icon(
          Icons.person_outline,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.card:
        return Icon(
          Icons.credit_card,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.thumbsUp:
        return Icon(
          Icons.thumb_up_alt_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.mic:
        return Icon(
          Icons.mic_none_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.micOff:
        return Icon(
          Icons.mic_off,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.book:
        return Icon(
          Icons.library_books_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.help:
        return SvgPicture.asset(
          'assets/profile/help.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.about:
        return Icon(
          Icons.info_outline,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.videoPost:
        return Icon(
          Icons.video_library_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.delete:
        return Icon(
          Icons.delete_outline,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.message:
        return Icon(
          Icons.add_comment_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.chat:
        return SvgPicture.asset(
          'assets/tabs/chat.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.closeCircle:
        return Icon(
          Icons.highlight_remove_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.bathTub:
        return Icon(
          Icons.bathtub_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.bed:
        return Icon(
          Icons.bed_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.area:
        return Icon(
          Icons.calculate_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.send:
        return Icon(
          Icons.send,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.bookMark:
        return Icon(
          Icons.bookmark_border_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.buildings:
        return Icon(
          Icons.home_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.lock:
        return Icon(
          Icons.lock_open_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.map:
        return Icon(
          Icons.map_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.news:
        return Icon(
          Icons.list_alt_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.camera:
        return Icon(
          Icons.camera_alt,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.cameraSwitch:
        return Icon(
          Icons.switch_camera_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.play:
        return Icon(
          Icons.play_arrow_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.multiplePosts:
        return Icon(
          Icons.collections_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.sticker:
        return Icon(
          Icons.emoji_emotions_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.gif:
        return Icon(
          Icons.gif_box,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.stop:
        return Icon(
          Icons.stop_circle,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.sending:
        return Icon(
          Icons.error_outline_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.sent:
        return Icon(
          Icons.done,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.delivered:
        return Icon(
          Icons.done_all,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.read:
        return Icon(
          Icons.done_all,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.fwd:
        return Icon(
          Icons.send,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.reply:
        return Icon(
          Icons.reply,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.videoCamera:
        return Icon(
          Icons.videocam,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.videoCameraOff:
        return Icon(
          Icons.videocam_off,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.callEnd:
        return Icon(
          Icons.call_end,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.emptyCheckbox:
        return Icon(
          Icons.check_box_outline_blank,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.selectedCheckbox:
        return Icon(
          Icons.check_box,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.gallery:
        return Icon(
          Icons.photo,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.wallpaper:
        return Icon(
          Icons.wallpaper,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.darkMode:
        return Icon(
          Icons.dark_mode,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );

      case ThemeIcon.selectionType:
        return Icon(
          Icons.file_copy_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.contacts:
        return Icon(
          Icons.contact_phone_rounded,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.location:
        return Icon(
          Icons.location_on,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.drawing:
        return Icon(
          Icons.draw,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.report:
        return Icon(
          Icons.report_problem_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.hide:
        return Icon(
          Icons.visibility_off_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.addCircle:
        return Icon(
          Icons.add_circle,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.userGroup:
        return Icon(
          Icons.supervisor_account_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.public:
        return Icon(
          Icons.public,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.request:
        return SvgPicture.asset(
          'assets/icons/request.svg',
          height: size ?? 20,
          width: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.files:
        return Icon(
          Icons.file_copy_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.fullScreen:
        return Icon(
          Icons.open_in_full_outlined,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.randomChat:
        return Icon(
          Icons.person_search,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.download:
        return Icon(
          Icons.file_download,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.pause:
        return Icon(
          Icons.pause,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.map:
        return Icon(
          Icons.map,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.music:
        return Icon(
          Icons.music_note,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.gift:
        return Icon(
          Icons.card_giftcard,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.arrowUpward:
        return Icon(
          Icons.arrow_upward,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
      case ThemeIcon.arrowDownward:
        return Icon(
          Icons.arrow_downward,
          size: size ?? 20,
          color: color ?? ColorConstants.iconColor,
        );
    }
  }
}
