# ⚽ Football Match Event Tracker

A simple and fast Flutter app to track events during a football match.  
The app lets you start a match timer, quickly record events (goals, goal type, and scorer), and view/export a summary at the end.

## ✨ Features
- Start / stop a **match timer**.  
- Record **goals** with details:
  - Scorer  
  - Goal type (Right Foot, Left Foot, Header)  
- View a **timeline of events** as they happen.  
- Export events (JSON or CSV) at the end of the match.  
- Clean and easy-to-use interface built with Flutter.

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install)  
- Android Studio (for SDK + emulator) or Visual Studio Code with Flutter & Dart extensions  
- Android emulator or a physical Android device

### Run the app
```bash
flutter pub get
flutter run
```

## 📂 Project Structure
```
lib/
 ├── main.dart          # App entry point
 ├── screens/
 │    ├── home_screen.dart     # Timer + quick actions
 │    ├── event_screen.dart    # Add/select events
 │    └── summary_screen.dart  # List + export
 ├── models/
 │    └── match_event.dart     # Event model (timestamp, player, type)
 └── widgets/
      └── event_button.dart    # Reusable UI components
```

## 🎯 Roadmap
- [ ] Edit / remove events  
- [ ] Add support for substitutions, fouls, and cards  
- [ ] Export match report as PDF  
- [ ] Add offline persistence (local storage)  
- [ ] Sync with cloud storage / user accounts

## 🛠 Tech Stack
- **Flutter** (Dart)  
- **Material Design** for UI  
- Target: Android (iOS support possible in future)

## 💡 Notes & Tips
- Start with `setState` for state management; migrate to Provider or Riverpod if the app grows.  
- For exports, `jsonEncode` is quick for JSON; use `csv` package or build a simple CSV writer for CSV export.  
- Consider storing events locally (e.g., using `shared_preferences` or `sqflite`) if you need persistence between app restarts.

## 📄 License
Add your preferred license file (e.g., `LICENSE`) to the repo.
