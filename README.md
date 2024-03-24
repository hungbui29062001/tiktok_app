# ec_mobile

## Project description

- Flutter 3.19.3

## Setup and Installation

### Bootstrap the project

```bash
echo "Bootstrap the project"
clear 
flutter clean 
flutter pub get 
dart run build_runner build --delete-conflicting-outputs
dart run intl_utils:generate
echo "Bootstrap finished"
```

or run each command:

```bash
flutter clean 
```

```bash
flutter pub get 
```

```bash
dart run intl_utils:generate
```

## Gen code

Watches the files system for edits and does rebuilds as necessary.

```bash
dart run build_runner watch
```

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Build

- Build apk develop:

```bash
flutter build apk --flavor development lib/main_development.dart
```

### Clear git local cached

When you think your git is messed up, you can use this command to do everything up-to-date.

```bash
git rm -r --cached . 
git add . 
git commit -m 'git cache cleared'
```

> [!CAUTION]
> Note: Only use when the project has no changes waiting to be committed.# EC
