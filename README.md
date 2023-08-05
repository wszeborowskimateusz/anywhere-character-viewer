# Anywhere character viewer

Flutter project that allows to browse characters based on search query (from https://api.duckduckgo.com/).


https://github.com/wszeborowskimateusz/anywhere-character-viewer/assets/31158740/98c1a23f-cd1d-4dcb-9cdd-adad3a09e611


## Getting Started

### How to run the project
You should have flutter *3.10.6*

#### Dart defines
The following dart defines are supported by the app
| Name | Possible values | Default value | What it does |
| :-----: | :------------: |:---: | :---: |
| CHARACTER_QUERY | Any string | simpsons characters | provides the search query for duckduckgo api |
| APP_NAME | Any string   | Simpsons Character Viewer | specifies app display name |
| PACKAGE_NAME | Package name to be used  (e.g. com.example) | None | specifies app id |

All of the listed dart defines must be provided in order for the app to work correctly. 

Dart defines can be grouped into a file. 2 files are provided:
- dart-defines-simpsons.json - for simpsons characters
- dart-defines-wire.json - for wire characters

Api url is build in the following way (using value from dart-define):
`https://api.duckduckgo.com/?q={CHARACTER_QUERY}&format=json`

#### Run the app
1. Run `flutter pub get` command to get all the dependencies
2. Run `flutter run --dart-define-from-file={name of the file from list above}` command to open the app

e.g. `flutter run --dart-define-from-file=dart-defines-simpsons.json`

The app should run on both Android and iOS.

### Running tests
To run all the unit tests run `flutter test` command

To run integration tests run `flutter test integration_test` command. 


### Generating code
All the generated classes are already in the repository, but when you would like to regenerate them
use `dart run build_runner build --delete-conflicting-outputs` command.

## Features
The app allows user to browse characters from given series (simpsons or the wire).
User can search by typing query into search box. Search works on both name of the character and description.

User can click on any of the characters. On vertical view this will open a details page.
On horizontal view and tablets this will open a details panel on the same screen.

## Localizations
This project relies on flutter_localizations and follows the
(official internationalization guide for Flutter)[https://docs.flutter.dev/development/accessibility-and-localization/internationalization].

To add a new string simply put it in all `.arb` files.
