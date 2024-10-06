# Horus - Horoscope App

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)

## Introduction
Horus is a minimalist iOS application that displays horoscope information for the twelve zodiac signs. The app allows users to view a list of horoscopes, explore detailed information about each sign, and search for their horoscope based on their birthdate.

This project is built using Swift, SwiftUI, and follows Object-Oriented Programming (OOP) and SOLID principles. The app features light and dark mode compatibility, and uses a modular file structure to promote code organization and scalability.

## Features
- **Home Screen**: Displays a list of all zodiac signs, each with its name and icon.
- **Detail View**: Tap on any zodiac sign to see its detailed view, which includes a larger image, name, date range, and a description.
- **Search Feature**: Enter a birthdate, and the app will display the corresponding zodiac sign.
- **Dark Mode**: The app supports both light and dark themes, with a seamless switch between the two.
- **Modular Design**: The app follows a highly modular structure, making it easy to maintain, scale, and expand.

## Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/923cf78b-b02c-4925-9fe7-9676f26756fa" width="24%">
  <img src="https://github.com/user-attachments/assets/af52ac33-974f-4aa1-90ea-567c4b0ed98a" width="24%">
  <img src="https://github.com/user-attachments/assets/d56efd7f-4f58-4509-8e13-15227d15b4ba" width="24%">
  <img src="https://github.com/user-attachments/assets/1847be00-2316-4dad-bc89-994e40a29a53" width="24%">
</p>

## Installation
To run this project locally, follow these steps:

### Prerequisites:
- macOS with [Xcode](https://developer.apple.com/xcode/) installed.
- Basic knowledge of Git for cloning the repository.

### Steps:
1. Clone the repository:
   ```bash
   git clone https://github.com/ebodshojaei/horus.git
   cd horus
   ```

2. Open the `Horus.xcodeproj` in Xcode:
   ```bash
   open Horus.xcodeproj
   ```

3. Run the app on the iOS simulator:
   - Select a device in the Xcode toolbar.
   - Press the **Run** button or `Cmd + R`.

4. Optionally, connect a physical iPhone device and run the app.

## Usage
1. **Home Screen**: Browse through the list of zodiac signs. Tap on any zodiac to see detailed information about that sign.
2. **Search Functionality**: Navigate to the **Search** tab. Enter your birthdate to see which zodiac sign corresponds to that date.
3. **About Page**: Access information about the developers from the **About** tab.

## Technologies Used
- **Swift**: The primary language for iOS app development.
- **SwiftUI**: A declarative framework for building user interfaces in a concise and readable manner.
- **Xcode**: Apple's official IDE for iOS/macOS app development.
- **SwiftData**: Integrated SQLite support for managing zodiac data.
- **Dark Mode Compatibility**: Provides a smooth UI experience across light and dark themes.

## Directory Structure
Here is the directory structure of the project:

```
Horus/
├── Assets.xcassets/                # Contains all images and color assets.
│   ├── horoscopes/                 # Horoscope icons and images.
│   └── accent color, app icon      # Accent color and app icon.
├── Data/
│   └── json/                       # JSON file for zodiac data (if required).
├── Models/
│   └── Horoscope.swift             # Model representing a horoscope.
├── Utils/
│   ├── AppTheme.swift              # Handles light/dark mode configurations.
│   └── DateUtility.swift           # Date parsing utility.
├── ViewModels/
│   └── HoroscopeViewModel.swift    # Logic for handling horoscope data.
├── Views/
│   ├── AboutView.swift             # About screen view.
│   ├── ContentView.swift           # Main tab view.
│   ├── HomeView.swift              # Displays the list of horoscopes.
│   ├── HoroscopeDetailView.swift   # Detailed view for individual horoscopes.
│   └── SearchView.swift            # Search view for birthdate-based horoscope lookup.
├── HorusApp.swift                  # Main entry point for the application.
└── README.md                       # This file.
```

## Contributing
We welcome contributions to the **Horus** project! If you'd like to contribute, please follow these steps:
1. Fork the repository.
2. Create a new feature branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request to the `main` branch.
