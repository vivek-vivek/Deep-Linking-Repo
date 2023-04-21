import 'dart:developer';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:share_plus/share_plus.dart';

class LinkGenerator {
  /// Creates a dynamic link for a given screen name and returns it as a string.
  Future<String> createDynamicLink({required String screen}) async {
    // Initialize the Firebase Dynamic Links instance
    final fbLink = FirebaseDynamicLinks.instance;
    // Define the url for the dynamic link, using the screen name as a path
    final url = 'https://www.deeplinkrepo.com/$screen';
    // image prific url
    const imgUrl =
        'https://i.pinimg.com/originals/68/b5/0e/68b50ea0e2a9e3c11ab34b6b795c2953.png';

    // Define the parameters for the dynamic link
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      // The link that will open the app or direct to the app store
      link: Uri.parse(url),
      // The prefix for the dynamic link domain
      uriPrefix: 'https://deeplinkrepo.page.link',
      // The parameters for Android devices
      androidParameters: const AndroidParameters(
        // The package name of the app
        packageName: 'com.example.deep_linking_repo',
        // The minimum version of the app that can handle the link, you can decire it
        minimumVersion: 1,
      ),
      // The parameters for Google Analytics tracking
      googleAnalyticsParameters: const GoogleAnalyticsParameters(
        // The source of the traffic
        source: "twitter",
        // The medium of the traffic
        medium: "social",
        // The name of the campaign
        campaign: "example-promo",
      ),
      // The parameters for social media sharing
      socialMetaTagParameters: SocialMetaTagParameters(
        // The title of the link
        title: "Example of a Dynamic Link",
        // The image url of the link
        imageUrl: Uri.parse(imgUrl),
      ),
    );

    // Build a short version of the dynamic link
    final ShortDynamicLink dynamicLink =
        await fbLink.buildShortLink(parameters);

    // Get the short url from the dynamic link object
    final Uri shortUrl = dynamicLink.shortUrl;

    // Return the short url as a string
    return shortUrl.toString();
  }

  /// Shares the dynamic link for a given screen name using the Share plugin.
  Future shareLink({required String screen}) async {
    // Call the createDynamicLink method to get the dynamic link for the screen name
    final dynamicLink = await createDynamicLink(screen: screen);
    log(dynamicLink.toString());
    // Use the Share plugin to share the dynamic link with other apps
    Share.share(dynamicLink, subject: "share this link to see a dynamic link");
  }
}
