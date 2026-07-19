# Portfolio Android App

Android app version of your HTML portfolio. Runs completely offline on your Android phone.

## Features
- Offline browsing of your portfolio
- Fast local loading
- No internet required after installation

## Setup

### Prerequisites
- Android Studio (version 2022.1 or later)
- Android SDK 21+ 
- JDK 11+

### Build Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/josgraham3-cyber/portfolio-android-app.git
   cd portfolio-android-app
   ```

2. **Open in Android Studio**
   - File → Open → Select this project
   - Let Gradle sync complete

3. **Add your HTML portfolio files**
   - Copy your HTML files to `app/src/main/assets/`
   - Structure should be:
     ```
     app/src/main/assets/
     ├── index.html
     ├── public/
     └── assets/
     ```

4. **Build and Run**
   ```bash
   ./gradlew assembleDebug
   adb install app/build/outputs/apk/debug/app-debug.apk
   ```
   Or use Android Studio's Run button (Shift + F10)

5. **Create Release APK**
   ```bash
   ./gradlew assembleRelease
   ```
   Find APK at: `app/build/outputs/apk/release/app-release.apk`

## File Structure
```
portfolio-android-app/
├── app/
│   ├── src/main/
│   │   ├── AndroidManifest.xml
│   │   ├── java/com/example/portfolio/
│   │   │   └── MainActivity.kt
│   │   ├── res/
│   │   │   ├── layout/
│   │   │   ├── values/
│   │   │   └── mipmap/
│   │   └── assets/
│   │       └── (Your HTML portfolio files go here)
│   └── build.gradle
├── build.gradle
└── settings.gradle
```

## Customization

### Change App Name
Edit `app/src/main/res/values/strings.xml`:
```xml
<string name="app_name">Your App Name</string>
```

### Add an App Icon
Place your icon in `app/src/main/res/mipmap-xhdpi/` and update `AndroidManifest.xml`

### Change Theme Colors
Edit `app/src/main/res/values/colors.xml` and `themes.xml`

## Troubleshooting

**Files not loading?**
- Ensure files are in `app/src/main/assets/`
- Check that the main HTML file is named `index.html`

**WebView issues?**
- Make sure `javaScriptEnabled` is true in MainActivity.kt
- Check logcat for errors

## Installation on Phone

1. Enable "Unknown sources" in phone settings
2. Connect phone via USB
3. Run: `adb install app/build/outputs/apk/debug/app-debug.apk`
4. Or manually transfer the APK file and tap to install

## License
MIT