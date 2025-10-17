# OpenMarket

A Simple Flutter Project of an e-commerce, using JSON and BLoC pattern as a State Manager 

## About the Project

This is a simple mobile e-commerce application developed in Flutter that simulates the listing, detail viewing, and searching of products in a virtual store (the "OpenMarket").

The main objective of this project is to demonstrate proficiency in consuming REST APIs, handling JSON data, and managing complex state using the BLoC (Business Logic Component) architecture in Flutter.

The focus is on clean architecture and good development practices, ensuring a clear separation of concerns among the application layers (Data, BLoC, and UI/Presentation).

## Features

    Product Listing: Displays a list of available products on the home screen.

    Detail Viewing: Allows the user to tap on a product and view detailed information (description, price, specifications, etc.).

    Product Search: Search functionality to find specific products, as demonstrated in the video (e.g., searching for "eye").

    BLoC State Management: Implementation of BLoC to manage the state of the product list and individual item details.

    Action Simulation: "Buy" and "Add to Cart" buttons (simulated for UI demonstration and navigation flow purposes).

## Technologies Used

    Flutter: Main framework for UI and logic development.

    Dart: Programming language.

    BLoC (Business Logic Component): Used for application state management, implementing the Event > State > BLoC pattern.

    REST API/JSON: Consumption and deserialization/serialization of JSON data from a RESTful endpoint (simulated or real) to manage product data.

    Network Packages: (Assuming the use of http or dio for API consumption).

    Theming: Implementation of a custom dark theme.

## Installation and Execution

To run this project locally, follow the steps below:

Prerequisites

Make sure you have the Flutter SDK and the development tools configured on your machine.

### 1. Clone the Repository

Bash

git clone [YOUR_REPOSITORY_URL]
cd OpenMarket

### 2. Install Dependencies

Run the command to get all project dependencies:
Bash

flutter pub get

### 3. Run the Application

Connect a physical device or start an emulator/simulator and execute:
Bash

flutter run

The application will be compiled and installed on your device/emulator.

## Architecture and File Structure

The project adopts a clean and organized architecture, clearly separating the Data, Business Logic (BLoC), and Presentation (UI) layers. State management is performed exclusively with the BLoC pattern.

The directory structure is as follows:

```
├── lib/
│   ├── data/
│   │   ├── bloc/         # Home screen state management (Events, States, BLoC)
│   │   ├── models/       # Definition of data models (e.g., PostModel)
│   │   └── providers/    # Logic for REST API consumption (Data Sources/Providers)
│   ├── extensions/       # Useful extensions for BuildContext
│   ├── global_widgets/   # Reusable widgets across the application
│   │   ├── appbar/       # Custom AppBar (main_appbar.dart)
│   │   ├── buttons/      # Custom buttons (Primary, Secondary)
│   │   └── cards/        # Product display cards (product_card.dart)
│   ├── pages/            # Main application screens
│   │   ├── home_page/    # Product listing screen (home_page.dart)
│   │   └── product_page/ # Product details screen (product_detail_page.dart)
│   └── themes/           # Visual theme definition (app_theme.dart)
```

## Architectural Highlights:

    BLoC Separation: BLoC, Event, and State files are isolated, ensuring that business logic does not directly depend on the UI.

    UI Reusability: Components like appbar, buttons, and cards are centralized in global_widgets, promoting code reuse and visual consistency.

📝 License

This project is licensed under the [Select your license, e.g., MIT] License. See the LICENSE file for more details.
