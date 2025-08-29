# Project Overview

This is a basic Flutter e-commerce application. The app features a bottom navigation bar that allows switching between four main screens. The project serves as a foundational structure for a shopping app, with a focus on UI layout and navigation.

The application is structured with a `lib` directory containing the main source code, which is further organized into `pages` and `widgets` subdirectories. The entry point of the application is `lib/main.dart`, which sets up the initial routing to `lib/root_screen.dart`.

# Screen-by-Screen Breakdown

The application's UI is centered around the `RootScreen`, which acts as a container for the four main pages, managing navigation between them via a `BottomNavigationBar`.

*   **`root_screen.dart`:** This is the stateful widget that holds the main layout. It manages the `selectedIndex` of the bottom navigation bar and displays the corresponding page from the `pages` list.

*   **`pages/home_page.dart`:** This is the landing page of the app. It displays a horizontally scrollable list of "Latest Products." The product data is currently hardcoded in a `dummyProducts` list. Each item in the list shows a product image, title, price, and a non-functional "add to cart" icon.

*   **`pages/card_page.dart`:** This is a placeholder screen intended to function as the shopping cart. It currently displays a simple `Scaffold` with an `AppBar` and a centered text widget.

*   **`pages/wishlist_page.dart`:** A placeholder screen for the user's wishlist. Similar to the cart page, it's a stateless widget with a basic layout.

*   **`pages/profile_page.dart`:** A placeholder screen for the user's profile. It follows the same basic structure as the cart and wishlist pages.

# Building and Running

To build and run this project, use the following standard Flutter commands:

*   **Get dependencies:**
    ```bash
    flutter pub get
    ```
*   **Run the app:**
    ```bash
    flutter run
    ```

# Development Conventions

*   **State Management:** The project currently uses `StatefulWidget` for local state management, primarily in `root_screen.dart` to handle the active tab selection.
*   **File Structure:** The `lib` directory is organized into `pages` for screens and `widgets` for reusable UI components.
*   **Coding Style:** The code follows the standard Dart and Flutter coding styles, with lints enforced by the `flutter_lints` package.