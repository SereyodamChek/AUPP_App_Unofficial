
<div align="center">
  <img src="https://www.aupp.edu.kh/wp-content/uploads/AUPP-Knock-out-Logo.png" alt="AUPP Logo" width="280"/>
  
  # 🎓 AUPP App (Unofficial)
  
  *A modern, community-driven mobile experience for AUPP students*
  
  [![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
  [![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
  [![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
  [![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-606060?style=for-the-badge)](https://flutter.dev/multi-platform/)
  
  <br/>
  
  > ⚠️ **Disclaimer**: This is an **unofficial** project and is not affiliated with, endorsed by, or officially supported by AUPP. For official services & policies, please refer to [AUPP's official website](https://www.aupp.edu.kh/).
</div>

---

## 📖 About The Project

An unofficial, community-driven application for **AUPP (American University of Phnom Penh)** students. Designed to provide quick, mobile-friendly access to academic information, class schedules, announcements, and campus resources in a modern, responsive interface.

Built with ❤️ by **SereyodamChek (Dom)** to enhance the student experience at AUPP.

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| 📅 **Smart Schedule Tracker** | View timetables, room assignments, and professor details |
| 📢 **Announcements Feed** | Stay updated with campus notifications & academic alerts |
| 📊 **Academic Dashboard** | Track courses, credits, and academic progress *(configurable)* |
| 🔍 **Quick Search & Filters** | Find courses, departments, and resources instantly |
| 🌙 **Dark/Light Mode** | Comfortable UI with adaptive theming |
| 🌐 **Cross-Platform Ready** | Optimized for Android, iOS, Web, Windows, macOS, and Linux |

---

## 🛠️ Tech Stack

<div align="center">

| Category | Technology |
|:--------:|:----------:|
| **Framework** | ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white) |
| **Language** | ![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white) |
| **State Management** | `Riverpod` / `Provider` / `BLoC` / `GetX` |
| **Networking** | `Dio` / `http` / `Retrofit` |
| **Local Cache** | `Shared Preferences` / `Hive` / `SQLite` |
| **Testing** | `Flutter Test`, `Mockito/Mocktail` |

</div>

---

## 🚀 Getting Started

### 📦 Prerequisites

Before you begin, ensure you have the following installed:

- ✅ Flutter SDK `3.x` or later
- ✅ Dart SDK
- ✅ IDE: VS Code or Android Studio (with Flutter & Dart extensions)
- ✅ Git

### 📥 Installation & Setup

**1. Clone the repository**

```bash
git clone https://github.com/SereyodamChek/AUPP_App_Unofficial.git
cd AUPP_App_Unofficial
```

**2. Install dependencies**

```bash
flutter pub get
```

**3. Run the app**

```bash
flutter run
```

### ▶️ Run on Specific Platforms

```bash
flutter run -d chrome      # Web
flutter run -d android     # Android
flutter run -d ios         # iOS (macOS required)
flutter run -d windows     # Windows Desktop
flutter run -d macos       # macOS Desktop
flutter run -d linux       # Linux Desktop
```

---

## 📂 Project Structure

```
AUPP_App_Unofficial/
│
├── lib/
│   ├── main.dart              → App entry point
│   ├── models/                → Data models (student_data.dart, etc.)
│   ├── screens/               → UI screens (home, schedule, announcements, etc.)
│   └── widgets/               → Reusable components
│
├── android/                   → Android-specific configs
├── ios/                       → iOS-specific configs
├── web/                       → Web-specific configs
├── windows/                   → Windows Desktop configs
├── macos/                     → macOS Desktop configs
├── linux/                     → Linux Desktop configs
├── test/                      → Unit and widget tests
│
├── pubspec.yaml               → Dependencies & metadata
├── analysis_options.yaml      → Lint rules
└── README.md                  → Documentation
```

---

## 🎯 Project Purpose

- 💡 Demonstrate **Flutter** capabilities for cross-platform development
- 📚 Provide AUPP students with a **centralized academic companion**
- 🎨 Showcase **modern UI/UX design principles** in a real-world context
- 🔧 Serve as a **learning resource** for student developers
- 🚀 Prepare for future **backend integration** and **authentication flows**

---

## 📈 Roadmap & Future Improvements

- [ ] 🔐 **Authentication** – Student login with OTP verification
- [ ] 🌐 **Live API Integration** – Real-time schedule & announcement sync
- [ ] 🔔 **Push Notifications** – Class reminders and campus alerts
- [ ] 🌍 **Multi-language** – Khmer & English support
- [ ] 📊 **Grade Tracker** – GPA calculation and progress visualization
- [ ] 🎨 **Custom Themes** – Personalized color schemes
- [ ] 📅 **Calendar Export** – Sync with Google Calendar / Apple Calendar
- [ ] 👥 **Study Groups** – Peer-to-peer collaboration features

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. 🍴 Fork the project
2. 🌿 Create your feature branch (`git checkout -b feature/amazing-feature`)
3. 💾 Commit your changes (`git commit -m 'Add amazing feature'`)
4. 📤 Push to the branch (`git push origin feature/amazing-feature`)
5. 🔁 Open a Pull Request

---

## 📫 Contact

**SereyodamChek (Dom)**

<div align="left">
  
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/SereyodamChek)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:sereyodamc011@gmail.com)
[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=for-the-badge&logo=vercel&logoColor=white)](http://www.cheksereyodam.site)

</div>

---

## 📄 License

Distributed under the **MIT License**. See [`LICENSE`](LICENSE) for more information.

---

## 🙏 Acknowledgments

- AUPP community for inspiration
- Flutter & Dart open-source ecosystem
- All contributors and testers

---

<div align="center">
  
  **⭐ If this project helped you, please consider giving it a star! ⭐**
  
  *Built with Flutter — one widget at a time.* 💙
  
</div>
