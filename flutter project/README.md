# Flutter Gallery App

A modern Flutter application featuring user authentication and a beautiful image gallery using the Picsum Photos API. Built with clean architecture principles and BLoC pattern for state management.

## Features

- **Secure Authentication**
  - Email validation
  - Password complexity requirements
  - Loading states and error handling

- **Image Gallery**
  - Dynamic image loading from Picsum Photos API
  - Responsive grid layout
  - Image loading indicators
  - Pull-to-refresh functionality
  - Error handling with retry option

- **Modern UI**
  - Material Design 3
  - Custom typography using Google Fonts
  - Smooth animations and transitions
  - Responsive layout for different screen sizes

## Architecture

- **BLoC Pattern**
  - Separate business logic from UI
  - Predictable state management
  - Easy testing and maintenance

- **Clean Architecture**
  - Services layer for API communication
  - Model layer for data structure
  - Presentation layer with BLoC
  - UI layer with screens and widgets

## Dependencies

- `flutter_bloc`: State management
- `equatable`: Value equality
- `http`: API requests
- `google_fonts`: Custom typography
- `email_validator`: Email validation

## Getting Started

1. **Prerequisites**
   - Flutter SDK
   - Dart SDK
   - Android Studio / VS Code
   - Android Emulator / iOS Simulator

2. **Installation**
   ```bash
   # Clone the repository
   git clone [repository-url]

   # Navigate to project directory
   cd flutter-gallery-app

   # Install dependencies
   flutter pub get

   # Run the app
   flutter run