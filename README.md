# 🧮 BMI Calculator (Flutter)

A simple and clean **BMI (Body Mass Index) Calculator** built with **Flutter**.
The app allows users to enter their personal data (gender, height, weight, age) and instantly see their BMI result with a clear visual indicator.

---

## ✨ Features

* 🚻 Gender selection (Male / Female)
* 📏 Height slider (cm)
* ⚖️ Weight & Age adjustment
* 🧠 Automatic BMI calculation
* 📊 BMI category indicator:

  * Underweight
  * Normal
  * Overweight
  * Obesity
* 🎯 Dynamic arrow indicator for BMI level
* 🎨 Custom theming (colors & text styles)
* 📱 Responsive UI

---

## 📸 Screenshots

<img width="180" height="260" alt="Screenshot_1769535222" src="https://github.com/user-attachments/assets/36ca6ee3-401b-4a28-a8e6-32dd75b4a47f" />
<img width="180" height="260" alt="Screenshot_1769535226" src="https://github.com/user-attachments/assets/09c741db-47ac-4e1e-9564-80a0b8141866" />



## 🛠️ Tech Stack

* **Flutter**
* **Dart**
* Material Design

---




## 🧠 BMI Calculation Logic

```dart
double bmi = weight / ((height / 100) * (height / 100));
```

### BMI Levels

| BMI Value   | Status      |
| ----------- | ----------- |
| < 18.5      | Underweight |
| 18.5 – 24.9 | Normal      |
| 25 – 29.9   | Overweight  |
| ≥ 30        | Obesity     |

---

## ▶️ Getting Started

### 1️⃣ Prerequisites

* Flutter SDK
* Dart SDK
* Android Studio / VS Code

---

### 2️⃣ Installation

```bash
git clone https://github.com/your-username/bmicalculator.git
cd bmicalculator
flutter pub get
```

---

### 3️⃣ Run the App

```bash
flutter run
```

---

## 🎨 Customization

* Colors: `core/theme/color_manager.dart`
* Text styles: `core/theme/text_style.dart`

You can easily update the UI theme from these files.

---

## 🚀 Future Improvements

* 🔄 Animations for BMI indicator
* 🌍 Localization (Arabic / English)
* 📈 Save BMI history
* 🌓 Dark / Light mode

---

## 📚 Resources

* [Flutter Documentation](https://docs.flutter.dev/)
* [Flutter Widgets Catalog](https://docs.flutter.dev/development/ui/widgets)

---

## 🤝 Contributing

Contributions are welcome!
Feel free to fork this repository and submit a pull request.

---

## 🧑‍💻 Author

**Mena Elgazar**
Flutter Developer 💙

---

## 📄 License

This project is licensed under the MIT License.

---

> 💡 *Built with Flutter & passion for clean UI.* 🚀
