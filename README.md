[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

# MonoFlutter-Skeleton

A lightweight Flutter monorepo skeleton powered by [Melos](https://melos.invertase.dev/). This project provides a clean,
scalable foundation with nested navigation and a modular structure—perfect for kickstarting your next Flutter app,
whether for personal experiments or team projects.

---

## Flutter

```yaml
environment:
  sdk: ^3.9.0
  flutter: "3.29.1"
```

## Features

- **Monorepo Setup**: Manage multiple packages seamlessly with Melos.
- **Nested Navigation**: Pre-configured for complex app routing.
- **Modular Architecture**: Organized to grow with your needs.
- **Flutter Optimized**: Built with Flutter’s latest standards.
- **Minimal Boilerplate**: Get started quickly with a lean setup.

## Stack

- [melos](https://melos.invertase.dev/getting-started) - a tool for managing Dart projects with multiple packages.
- [slang](https://pub.dev/packages/slang) - type-safe i18n solution using JSON, YAML, CSV, or ARB files.
- [get_it](https://pub.dev/packages/get_it) - simple Service Locator for Dart and Flutter projects with some additional
  goodies.
- [bloc](https://pub.dev/packages/flutter_bloc) - a predictable state management library that helps implement the BLoC
  design pattern.
- [hive_ce](https://pub.dev/packages/hive_ce) - hive is a lightweight and blazing fast key-value database written in
  pure Dart.
- [fpdart](https://pub.dev/packages/fpdart) - functional programming in Dart and Flutter.
- [equatable](https://pub.dev/packages/equatable) - simplify Equality Comparisons.
- [auto_route](https://pub.dev/packages/auto_route) - declarative routing solution, where everything needed is
  automatically generated.
- [lint](https://pub.dev/packages/lint) - hand-picked, open-source, community-driven collection of lint rules
- [formz](https://pub.dev/packages/formz) - aims to simplify form representation and validation in a generic way.

## Getting Started

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/kaczmarzk/MonoFlutter-Skeleton.git
   cd MonoFlutter-Skeleton
   ```

2. **Bootstrap the project**:
   ```bash
   flutter pub get
   melos bootstrap
   ```

3. **Generate files**:
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   melos gen
   melos slang
   ```

4. **Create platforms**:
   ```bash
   flutter create --platform ios android .
   ```

## Project structure

```bash
.
├── lib
│   ├── core
│   │   ├── app
│   │   ├── entry_points
│   │   ├── extensions
│   │   ├── injection
│   │   └── routing
│   └── features
│       └── home
│           ├── cubit
│           │   ├── home_cubit.dart
│           │   └── home_state.dart
│           └── view
│               ├── widgets
│               └── home_screen.dart
└── packages
    ├── pkg_common_ui
    │   └── lib
    │       ├── src
    │       │   ├── values
    │       │   └── widgets
    │       └── pkg_common_ui.dart
    └── pkg_common_api
        └── lib
            ├── injectable
            ├── src
            │   ├── database
            │   └── utils
            │       └── error_handling
            └── pkg_common_api.dart
```
   
