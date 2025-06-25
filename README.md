# 🍽️ Recipe App

([video demo](video/demo_meal_app.mp4))

A comprehensive Flutter application for discovering, exploring, and managing meal recipes using TheMealDB API. Built with modern Flutter architecture patterns including BLoC state management and Repository pattern.

## 📱 Features

### Core Functionality

- 🏠 **Home Dashboard**: Browse featured recipes and categories
- 🔍 **Smart Search**: Search meals by name with real-time results
- 📚 **Category Browsing**: Explore meals by categories (Italian, Chinese, etc.)
- 🌍 **Area Filtering**: Filter recipes by geographical regions
- 🥗 **Ingredient Search**: Find recipes by ingredients
- ❤️ **Favorites**: Save and manage favorite recipes locally
- 📖 **Recipe Details**: View detailed cooking instructions and ingredients
- 👤 **User Profile**: Manage user preferences and favorites

### Technical Features

- 🎨 **Modern UI**: Clean, intuitive Material Design interface
- 🚀 **Fast Performance**: Optimized with efficient state management
- 📱 **Responsive Design**: Adaptive layouts for different screen sizes
- 💾 **Offline Support**: Local favorites storage with Hive database
- 🔄 **Real-time Search**: Debounced search with instant results
- 🎯 **State Management**: BLoC pattern for predictable state updates

## 🏗️ Architecture

This project follows **Clean Architecture** principles with clear separation of concerns:

```
lib/
├── 📁 community_bloc/          # BLoC state management
│   ├── community_bloc.dart     # Main BLoC logic
│   ├── community_event.dart    # Event definitions
│   └── community_state.dart    # State definitions
├── 📁 config/                  # App configuration
│   ├── gen/                    # Generated assets
│   └── router/                 # Navigation setup
├── 📁 module/                  # Feature modules
│   ├── app_shell/              # App shell and navigation
│   ├── home/                   # Home page
│   ├── search/                 # Search functionality
│   ├── detail_meal/            # Recipe details
│   ├── bookmark/               # Favorites management
│   ├── profile/                # User profile
│   └── widget/                 # Shared widgets
├── 📁 repos/                   # Repository layer
│   └── meal_repository.dart    # Data access abstraction
├── 📁 service/                 # External services
│   ├── meal_api_service.dart   # API communication
│   └── models/                 # Data models
└── 📁 res/                     # Resources (themes, colors, etc.)
```

### Design Patterns Used

- **🎯 BLoC Pattern**: For state management and business logic
- **🗂️ Repository Pattern**: For data access abstraction
- **🏭 Factory Pattern**: For model creation from JSON
- **🔧 Dependency Injection**: For testable and maintainable code

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (^3.7.2)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**

```bash
git clone <repository-url>
cd meal_app
```

2. **Install dependencies**

```bash
flutter pub get
```

3. **Generate necessary files**

```bash
flutter packages pub run build_runner build
```

4. **Run the app**

```bash
flutter run
```

### Development Setup

1. **Generate assets** (if adding new assets):

```bash
flutter packages pub run flutter_gen_runner
```

2. **Build Hive adapters** (if modifying models):

```bash
flutter packages pub run build_runner build --delete-conflicting-outputs
```

3. **Run tests**:

```bash
flutter test
```

## 📦 Dependencies

### Core Dependencies

- **flutter_bloc** (^9.1.1) - State management
- **go_router** (^14.6.2) - Navigation and routing
- **http** (^1.4.0) - HTTP client for API calls
- **hive** (^2.2.3) - Local database for favorites
- **freezed** (^2.5.2) - Code generation for immutable classes
- **rxdart** (^0.28.0) - Reactive programming utilities

### UI Dependencies

- **flutter_svg** (^2.1.0) - SVG icon support
- **scrollable_positioned_list** (^0.3.8) - Advanced list scrolling
- **flutter_native_splash** (^2.4.6) - Native splash screen

### Development Dependencies

- **build_runner** (^2.4.6) - Code generation
- **hive_generator** (^2.0.1) - Hive type adapters
- **flutter_gen_runner** (^5.7.0) - Asset generation

## 🌐 API Integration

The app integrates with **TheMealDB API** (https://www.themealdb.com/api.php):

### Endpoints Used

- `GET /list.php?c=list` - Get meal categories
- `GET /list.php?a=list` - Get meal areas/regions
- `GET /list.php?i=list` - Get ingredients
- `GET /filter.php?c={category}` - Get meals by category
- `GET /search.php?s={query}` - Search meals by name

### Rate Limiting

- API calls are debounced (400ms) for search queries
- Results are limited to 5 items per category for performance

## 🗃️ Local Storage

### Hive Database

- **Box Name**: `favorites`
- **Type**: `Meal` objects
- **Purpose**: Store user's favorite recipes offline
- **Adapter**: Auto-generated with `@HiveType` annotations

### Storage Operations

```dart
// Add to favorites
await box.put(meal.id, meal);

// Remove from favorites
await box.delete(meal.id);

// Check if favorite
bool isFavorite = box.containsKey(meal.id);
```

## 🎨 UI/UX Features

### Design System

- **Material Design 3** components
- **Custom color palette** with brand colors
- **Responsive layouts** for tablet and mobile
- **Dark/Light theme** support preparation

### Navigation

- **Bottom Navigation Bar** with 5 tabs
- **Nested navigation** with go_router
- **Deep linking** support
- **Back navigation** handling

### Animations

- **Smooth transitions** between screens
- **Loading indicators** during API calls
- **Search animations** with debouncing
- **Heart animation** for favorites

## 🔧 Configuration

### Environment Setup

The app uses configuration files for different environments:

```dart
// config/config.dart
class AppConfig {
  static const String apiBaseUrl = 'https://www.themealdb.com/api/json/v1/1';
  static const Duration searchDebounce = Duration(milliseconds: 400);
  static const int maxResultsPerCategory = 5;
}
```

### Asset Generation

Assets are auto-generated using flutter_gen:

```yaml
# pubspec.yaml
flutter_gen:
  output: lib/config/gen/
  line_length: 100
```

## 📊 State Management

### BLoC Events

- `LoadCategories` - Load meal categories
- `CategorySelected` - Select a category
- `SearchQueryChanged` - Search meals
- `ClearSearch` - Clear search results
- `ToggleFavorite` - Add/remove favorites
- `LoadIngredients` - Load ingredients list
- `LoadAreas` - Load geographical areas

### BLoC States

- `initial` - Initial state
- `loadingCategories` - Loading categories
- `categoryLoaded` - Categories loaded successfully
- `loadingSearch` - Searching meals
- `searchSuccess` - Search completed with results
- `searchEmpty` - Search completed with no results
- `error` - Error occurred

## 🚧 Repository Pattern

The app implements Repository pattern for better:

- **Separation of Concerns**: Clear data layer abstraction
- **Caching**: Future caching implementation ready
- **Error Handling**: Centralized error management

```dart
abstract class MealRepository {
  Future<List<String>> getCategories();
  Future<List<Meal>> searchMeals(String query);
  Future<void> toggleFavorite(Meal meal);
  // ... more methods
}
```

## 🔮 Future Enhancements

### Planned Features

- 🌙 **Dark Mode**: Complete dark theme implementation
- 📱 **Tablet UI**: Optimized layouts for larger screens
- 🔄 **Offline Mode**: Cached recipes for offline viewing
- 🏷️ **Tags System**: Custom tags for recipes
- 📊 **Analytics**: User behavior tracking
- 🔔 **Notifications**: Meal suggestions and reminders
- 🌐 **Internationalization**: Multi-language support

### Technical Improvements

- **Unit Test Coverage**: Increase to 90%+
- **Integration Tests**: End-to-end testing
- **Performance Optimization**: Image caching and lazy loading
- **Accessibility**: Screen reader and navigation improvements

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📞 Contact

- **Developer**: [Your Name]
- **Email**: [your.email@example.com]
- **Project Link**: [https://github.com/username/meal_app](https://github.com/username/meal_app)

## 🙏 Acknowledgments

- [TheMealDB](https://www.themealdb.com/) - Free meal database API
- [Flutter Team](https://flutter.dev/) - Amazing framework
- [BLoC Library](https://bloclibrary.dev/) - State management solution
- [Hive](https://docs.hivedb.dev/) - Fast local database

---

**Built with ❤️ using Flutter**
