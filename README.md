# OpenMarket

# ![OpenMarket](https://img.shields.io/badge/OpenMarket-Flutter-blue?style=for-the-badge&logo=flutter)  

[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)  
[![Flutter](https://img.shields.io/badge/Flutter-3.13-blue?logo=flutter)](https://flutter.dev/)  
[![Dart](https://img.shields.io/badge/Dart-3.3-blue?logo=dart)](https://dart.dev/)  

---

## 📌 About the Project

**OpenMarket** is a simple e-commerce project developed in Flutter that simulates listing, viewing details, and searching products in a virtual store.  

The main goal of this project is to demonstrate **skills in consuming REST APIs, handling JSON data, and managing complex state using the BLoC (Business Logic Component) pattern**.  

The focus is on **clean architecture** and best development practices, ensuring a clear separation between **Data**, **BLoC**, and **UI/Presentation**.

---

## Live Demonstration

![Adobe Express - OpenMarket v2(2)](https://github.com/user-attachments/assets/1fde386b-a23d-4c6d-9d92-8def29a78250)


## 🚀 Features

- **Product Listing:** Displays available products on the home screen.  
- **Product Details:** Allows viewing detailed information (description, price, specifications, etc.).  
- **Product Search:** Search functionality, as demonstrated in the video (e.g., searching for “eye”).  
- **BLoC State Management:** Controls the state of the product list and individual item details.  
- **Action Simulation:** "Buy" and "Add to Cart" buttons (simulated for UI demonstration and navigation flow).

---

## 🛠 Technologies Used

- **[Flutter](https://flutter.dev/)** – Main framework for UI and logic.  
- **[Dart](https://dart.dev/)** – Programming language.  
- **BLoC (Business Logic Component)** – State management using Event → State → BLoC pattern.  
- **REST API / JSON** – Consuming and (de)serializing JSON data.  
- **Network Packages** – `http` or `dio` (for API consumption).  
- **Theming** – Custom dark theme.

---

## ⚡ Installation and Running

### Prerequisites
- Flutter SDK installed.  
- Emulator or physical device available.

### 1. Clone the Repository
```bash
git clone [YOUR_REPOSITORY_URL]
cd OpenMarket
```

### 2. Install Dependencies
```
flutter pub get
```

### 3. Run the Application
```
flutter run
```

## Project Structure

Organized in layers separating Data, BLoC, and UI, with state managed exclusively via BLoC:

```
lib/
├── data/
│   ├── bloc/         # Home screen Events, States, and BLoC
│   ├── models/       # Data models (e.g., ProductModel)
│   └── providers/    # API consumption / Data Sources
├── extensions/       # Useful BuildContext extensions
├── global_widgets/   # Reusable widgets
│   ├── appbar/       # Custom AppBar
│   ├── buttons/      # Primary and Secondary buttons
│   └── cards/        # Product display cards
├── pages/            # Main screens
│   ├── home_page/    # Product listing screen
│   └── product_page/ # Product details screen
└── themes/           # Visual theme (app_theme.dart)
```

## Architectural Highlights

BLoC Separation: BLoC, Event, and State files isolated from UI.

UI Reusability: Widgets centralized in global_widgets for visual consistency.

## License

This project is licensed under the MIT

