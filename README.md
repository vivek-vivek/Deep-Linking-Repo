# Firebase Deep Linking

This project is a practice of deep linking using Firebase. Deep linking is a technique that allows you to create links that direct users to specific content within your app. With Firebase Dynamic Links, you can create smart links that work across multiple platforms and provide the best user experience.

## Features

- Share a screen as a link
- Share the link to social media platforms
- Open the app if it's already installed or go to the Play Store if not
- Show different images depending on the user's theme preference

## Screenshots

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="YOUR-DARKMODE-IMAGE">
  <source media="(prefers-color-scheme: light)" srcset="YOUR-LIGHTMODE-IMAGE">
  <img alt="Home screen" src="YOUR-DEFAULT-IMAGE">
</picture>

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="YOUR-DARKMODE-IMAGE">
  <source media="(prefers-color-scheme: light)" srcset="YOUR-LIGHTMODE-IMAGE">
  <img alt="Share screen" src="YOUR-DEFAULT-IMAGE">
</picture>

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="YOUR-DARKMODE-IMAGE">
  <source media="(prefers-color-scheme: light)" srcset="YOUR-LIGHTMODE-IMAGE">
  <img alt="Browser screen" src="YOUR-DEFAULT-IMAGE">
</picture>

## How to use

To use this project, you need to have Android Studio and Firebase account. Follow these steps:

1. Clone this repository and open it in Android Studio.
2. Create a Firebase project and register your app.
3. Add the Firebase Dynamic Links SDK to your app.
4. Configure your app to handle incoming links.
5. Build and run your app on a device or emulator.
6. Tap the share button on the home screen to generate and share a link.
7. Tap the link on another device or browser to open the app or the Play Store.
