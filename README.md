

````markdown
# 📱 Simple Calculator App

A basic yet functional calculator built using **Flutter**. This app performs simple arithmetic operations such as addition, subtraction, multiplication, and division. The UI is designed to be clean and user-friendly, making it ideal for beginners exploring Flutter development.

---

## 🚀 Features

- Basic arithmetic operations: `+`, `-`, `*`, `/`
- Clear button to reset calculation
- Handles decimal points
- Responsive layout with custom-styled buttons
- Built using `StatefulWidget` for reactive updates

---

## 🛠️ Tech Stack

- **Flutter**: UI toolkit for building natively compiled apps
- **Dart**: Programming language used for Flutter


---

## 🧠 How It Works

The calculator maintains:
- `_input`: Current number or expression being typed
- `_output`: Displayed result
- `_operator`: Current selected operator
- `_num1`, `_num2`: Operands used in calculation

### Button Handling Logic
- **Numbers & decimals** are appended to the current `_input`
- **Operators** (`+`, `-`, `*`, `/`) store `_input` in `_num1`, reset input, and store the operator
- **Equals (`=`)** parses `_input` as `_num2`, computes result using stored operator
- **Clear (`C`)** resets all fields

---

## 📂 Project Structure

```bash
calculator_app/
├── lib/
│   └── main.dart          # Main entry point with full calculator logic
├── pubspec.yaml           # Dependencies and project config
└── README.md              # This file
````

---

## ▶️ Getting Started

### Prerequisites

* [Flutter SDK](https://flutter.dev/docs/get-started/install)
* IDE like VS Code or Android Studio

### Run the App

```bash
git clone https://github.com/your-username/calculator_app.git
cd calculator_app
flutter pub get
flutter run
```

> 💡 Make sure you have an emulator or connected device running.

---

## 🔧 Future Improvements

* Add percentage `%` and backspace button
* Improve expression parsing with full expression evaluator (e.g., using `math_expressions` package)
* Add themes (dark/light)
* Implement history log

---



## 📄 License

This project is open-source and available under the [MIT License](LICENSE).


