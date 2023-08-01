import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:service_app/components/common_components.dart';
import 'package:get/get.dart';
import 'package:service_app/components/custom_texts.dart';
import 'package:service_app/extensions/extension.dart';
import 'package:service_app/extensions/number_extension.dart';
import 'package:service_app/helper/app_config_constants.dart';
import 'package:service_app/helper/localization_strings.dart';
import 'package:service_app/helper/theme_icon.dart';
import 'package:service_app/universal_components/app_buttons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              firstPage(),
              verticalSpacer(height: 50),
              Container(color: ColorConstants.cardColor, child: secondPage()),
              verticalSpacer(height: 50),
              Container(
                  color: ColorConstants.backgroundColor, child: thirdPage()),
              verticalSpacer(height: 50),
              Container(
                  color: ColorConstants.backgroundColor, child: fourthPage()),
              verticalSpacer(height: 50),
              Container(color: ColorConstants.cardColor, child: fifthPage()),
              verticalSpacer(height: 50),
              Container(
                  color: ColorConstants.backgroundColor, child: sixthPage()),
              CommonFooter(),
            ],
          ),
        ),
        header(),
      ],
    ));
  }

  Widget firstPage() {
    return Container(
      height: Get.height,
      child: Stack(
        children: [
          Expanded(
            child: CachedNetworkImage(
              imageUrl:
                  'https://plus.unsplash.com/premium_photo-1661342406124-740ae7a0dd0e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHBsdW1iaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            width: double.infinity,
            height: Get.height,
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpacer(height: 150),
                    Heading1Text(
                      AppConfigConstants.appName,
                      color: Colors.white,
                    ),
                    verticalSpacer(height: 20),
                    Heading6Text(
                        'Unlock the power of convenience with our home service app, bringing skilled professionals to your doorstep for a seamless experience.',
                        color: Colors.white),
                    verticalSpacer(height: 50),
                    AppThemeButton(
                        height: 60, width: 120, text: join.tr, onPress: () {})
                  ],
                ),
              ),
              // const SizedBox(
              //   width: 100,
              // ),
              Flexible(
                flex: 4,
                child: Image.asset(
                  'assets/landingPage/1.png',
                  fit: BoxFit.cover,
                ).tp(100),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget secondPage() {
    return Container(
      height: Get.height,
      child: Column(
        children: [
          verticalSpacer(height: 25),
          Card(
            child: Container(
              height: 120,
              color: ColorConstants.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/landingPage/huawei.png'),
                  Image.asset('assets/landingPage/intel.png'),
                  Image.asset('assets/landingPage/mcdonalds.png'),
                  Image.asset('assets/landingPage/samsung.png'),
                  Image.asset('assets/landingPage/uber.png'),
                ],
              ).p25,
            ),
          ).hP25,
          verticalSpacer(height: 25),
          Card(
            child: Container(
              // height: Get.height - 120,
              color: ColorConstants.backgroundColor,
              child: Column(
                children: [
                  verticalSpacer(height: 100),
                  Image.asset(
                    'assets/landingPage/stars.png',
                    height: 50,
                  ),
                  verticalSpacer(height: 50),
                  Heading4Text(
                    'Discover the power of convenience at your fingertips! Download our service app today and experience the seamless magic of UrbanClap, offering you a world of skilled professionals ready to cater to your every need.',
                    weight: TextWeight.regular,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpacer(height: 40),
                  Heading5Text(
                    '5-star review from Grifffin10101 on the App Store',
                    // weight: TextWeight.regular,
                    textAlign: TextAlign.center,
                    color: TextColor.grayscale600,
                  ),
                  verticalSpacer(height: 50),
                  AppThemeButton(
                      height: 60, width: 120, text: signUp, onPress: () {}),
                  verticalSpacer(height: 50),
                ],
              ).p25,
            ),
          ).hP25
        ],
      ),
    );
  }

  Widget thirdPage() {
    return Container(
      height: Get.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading4Text(
                  aboutStr,
                  color: ColorConstants.themeColor,
                  weight: TextWeight.semiBold,
                ),
                verticalSpacer(height: 20),
                Heading3Text(
                  'Home Service Hub: #1 App for Your Goals!',
                  weight: TextWeight.bold,
                ),
                verticalSpacer(height: 20),
                Heading6Text(
                  'Elevate home life with our #1 service app—repairs, fitness, spa, and more. Trusted pros at your doorstep, easy booking, and exceptional support. Upgrade your lifestyle today!',
                  color: TextColor.grayscale700,
                ),
                verticalSpacer(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ThemeIconWidget(
                          ThemeIcon.setting,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading4Text(
                              254728.formatNumber,
                              weight: TextWeight.bold,
                            ),
                            verticalSpacer(height: 5),
                            Heading6Text('Active installs')
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ThemeIconWidget(
                          ThemeIcon.message,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading4Text(
                              25828.formatNumber,
                              weight: TextWeight.bold,
                            ),
                            verticalSpacer(height: 5),
                            Heading6Text('Client reviews')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                verticalSpacer(height: 100),
                AppThemeButton(
                    height: 60, width: 150, text: 'Download', onPress: () {}),
              ],
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/landingPage/1.png',
                    width: 180,
                  ).rotate(-25),
                  Image.asset('assets/landingPage/1.png', width: 180)
                      .rotate(25),
                ],
              ),
              Image.asset(
                'assets/landingPage/1.png',
                width: 180,
              )
            ],
          ),
        ],
      ).setPadding(top: 25, bottom: 25, left: 100, right: 100),
    );
  }

  Widget fourthPage() {
    return Container(
      height: Get.height * 1.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Heading4Text(
            'App Features',
            color: ColorConstants.themeColor,
            weight: TextWeight.semiBold,
          ),
          verticalSpacer(height: 20),
          Heading3Text(
            'Awesome Features',
            weight: TextWeight.bold,
          ),
          verticalSpacer(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              featureCard(
                  icon: ThemeIcon.setting,
                  featureName: 'Book services',
                  aboutFeature:
                      'Hassle-free booking. Skilled professionals at your doorstep. Tap to get started!'),
              const SizedBox(
                width: 20,
              ),
              featureCard(
                  icon: ThemeIcon.cart,
                  featureName: 'Buy Products',
                  aboutFeature:
                      'Explore and buy a wide range of quality products from the comfort of your home, enhancing your lifestyle with just a click.'),
              const SizedBox(
                width: 20,
              ),
              featureCard(
                  icon: ThemeIcon.videoCamera,
                  featureName: 'Training Courses',
                  aboutFeature:
                      'Unlock your full potential with our diverse range of training courses, empowering you to learn and grow from anywhere, anytime.')
            ],
          ),
          verticalSpacer(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              featureCard(
                  icon: ThemeIcon.mobile,
                  featureName: 'Consultation',
                  aboutFeature:
                      'Get expert advice and personalized consultations over a call, making professional guidance accessible whenever you need it.'),
              const SizedBox(
                width: 20,
              ),
              featureCard(
                  icon: ThemeIcon.security,
                  featureName: 'Fully Secure',
                  aboutFeature:
                      'Rest easy knowing your data and transactions are fully secure, with robust measures in place to safeguard your privacy.'),
              const SizedBox(
                width: 20,
              ),
              featureCard(
                  icon: ThemeIcon.more,
                  featureName: 'Many More',
                  aboutFeature:
                      'Discover a plethora of exciting features awaiting you, unlocking limitless possibilities and enriching your app experience')
            ],
          )
        ],
      ),
    );
  }

  Widget featureCard(
      {required ThemeIcon icon,
      required String featureName,
      required String aboutFeature}) {
    return SizedBox(
        width: Get.width * 0.25,
        height: 260,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 70,
                  width: 70,
                  color: ColorConstants.themeColor,
                  child: ThemeIconWidget(
                    icon,
                    color: Colors.white,
                    size: 40,
                  )).circular,
              verticalSpacer(height: 20),
              Heading6Text(
                featureName,
                weight: TextWeight.bold,
              ),
              verticalSpacer(height: 20),
              BodyLargeText(
                aboutFeature,
                weight: TextWeight.regular,
                color: TextColor.grayscale700,
                textAlign: TextAlign.center,
              )
            ],
          ).p25,
        ));
  }

  Widget fifthPage() {
    return Container(
      height: Get.height * 1.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Heading4Text(
            'Screenshots',
            color: ColorConstants.themeColor,
            weight: TextWeight.semiBold,
          ),
          verticalSpacer(height: 20),
          Heading3Text(
            'User Friendly interface And Very Easy To Use Service App',
            weight: TextWeight.bold,
          ),
          verticalSpacer(height: 50),
          Row(
            children: [
              Flexible(flex: 5, child: Image.asset('assets/landingPage/1.png')),
              const SizedBox(
                width: 20,
              ),
              Flexible(flex: 5, child: Image.asset('assets/landingPage/1.png')),
              const SizedBox(
                width: 20,
              ),
              Flexible(flex: 5, child: Image.asset('assets/landingPage/1.png')),
              const SizedBox(
                width: 20,
              ),
              Flexible(flex: 5, child: Image.asset('assets/landingPage/1.png')),
              const SizedBox(
                width: 20,
              ),
              Flexible(flex: 5, child: Image.asset('assets/landingPage/1.png')),
            ],
          )
        ],
      ).hP25,
    );
  }

  Widget sixthPage() {
    return Container(
      height: Get.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Heading4Text(
            'How it works',
            color: ColorConstants.themeColor,
            weight: TextWeight.semiBold,
          ),
          verticalSpacer(height: 20),
          Heading3Text(
            '3 Easy steps',
            weight: TextWeight.bold,
          ),
          verticalSpacer(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              howItWorkCard(
                  icon: ThemeIcon.setting,
                  featureName: 'Install app',
                  aboutFeature:
                      'Embrace convenience – Install our app from Google Play Store and Apple App Store to elevate your lifestyle today!'),
              const SizedBox(
                width: 20,
              ),
              howItWorkCard(
                  icon: ThemeIcon.account,
                  featureName: 'Setup profile',
                  aboutFeature:
                      'Get started swiftly by setting up your profile and tailor the app experience to your preferences.'),
              const SizedBox(
                width: 20,
              ),
              howItWorkCard(
                  icon: ThemeIcon.videoCamera,
                  featureName: 'Enjoy app',
                  aboutFeature:
                      'Indulge in a delightful experience as you explore and enjoy the plethora of features our app offers')
            ],
          ),
        ],
      ),
    );
  }

  Widget howItWorkCard(
      {required ThemeIcon icon,
      required String featureName,
      required String aboutFeature}) {
    return SizedBox(
      width: Get.width * 0.25,
      height: 300,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                verticalSpacer(height: 50),
                Container(
                  color: ColorConstants.themeColor.withOpacity(0.05),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verticalSpacer(height: 50),
                      Heading6Text(
                        featureName,
                        weight: TextWeight.bold,
                      ),
                      verticalSpacer(height: 20),
                      BodyLargeText(
                        aboutFeature,
                        weight: TextWeight.regular,
                        color: TextColor.grayscale700,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ).p25,
                ).round(20),
              ],
            ),
          ),
          Container(
              height: 70,
              width: 70,
              color: ColorConstants.themeColor,
              child: Center(
                child: ThemeIconWidget(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
              )).circular,
        ],
      ).p25,
    );
  }

  Widget header() {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading6Text(
              AppConfigConstants.appName,
              weight: TextWeight.bold,
              color: Colors.white,
            ),
            Row(
              children: [
                Heading6Text(
                  'Join as business',
                  weight: TextWeight.bold,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                Heading6Text(
                  'Download app',
                  weight: TextWeight.bold,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ).hp(DesignConstants.horizontalPadding * 2),
      ),
      color: ColorConstants.themeColor.withOpacity(0.5),
      height: 80,
    );
  }
}

class CommonFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.cardColor.darken().withOpacity(0.4),
      padding: EdgeInsets.symmetric(
          vertical: DesignConstants.horizontalPadding * 4,
          horizontal: DesignConstants.horizontalPadding * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ColorConstants.themeColor.withOpacity(0.5),
            child: Heading4Text(
              AppConfigConstants.appName,
              weight: FontWeight.bold,
              // color: TextColor.grayscale100,
            ).p8,
          ).topLeftDiognalRounded(20),
          verticalSpacer(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading5Text(
                    contactUsString.tr,
                    weight: FontWeight.bold,
                  ),
                  verticalSpacer(height: 8),
                  BodyLargeText(
                    '5534 Somewhere In. The World 22193-10212',
                  ),
                  verticalSpacer(height: 15),
                  AppThemeButton(
                    text: emailUsString.tr,
                    onPress: () {},
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    title: quickLinks.tr,
                    items: [
                      aboutStr.tr,
                      feedback.tr,
                      testimonials.tr,
                      becomeProvider.tr
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  NavItem(
                    title: legal.tr,
                    items: [privacyPolicy.tr, termsOfService.tr],
                  ),
                ],
              ),
            ],
          ),
          verticalSpacer(height: 25),
          BodyMediumText(
            copyright.tr,
            weight: TextWeight.regular,
          ),
          verticalSpacer(height: 8),
          BodySmallText(madeWithLove.tr),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final List<String> items;

  NavItem({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyExtraLargeText(
          title,
          weight: TextWeight.bold,
        ),
        SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items
              .map(
                (item) => BodyMediumText(
                  item,
                  weight: TextWeight.regular,
                ).bP8,
              )
              .toList(),
        ),
      ],
    );
  }
}
