# Movie application _(Magdy Yacoub)_
# Table of content
1. [Preview](#preview)
2. [Key Features](#features)
3. [Packages Used](#packages)
4. [Installation](#installation)


<a name="preview"></a>
## Preview 
| **Wide Screen**|
|  :---: |
|  <img src="./assets/previews/wide_screen1.png" alt="Wide screen #1" height="500" width="auto">|
|  <img src="./assets/previews/wide_screen2.png" alt="Wide screen #2" height="500" width="auto">|
| **Tablet Size** |
|<img src="./assets/previews/tablet_screen1.jpg" alt="Tablet screen #1" height="500"> <img src="./assets/previews/tablet_screen2.jpg" alt="Tablet screen #1" height="auto" width="500">|
| **Phone Size** |
| <img src="./assets/previews/phone_screen1.png" alt="phone screen #1" height="500"> <img src="./assets/previews/phone_screen2.png" alt="phone screen #2" height="500"> <img src="./assets/previews/phone_screen3.png" alt="phone screen #3" height="500">|

<a name="features"></a>
## Key Features

* **Secured API key**
* **infinite scrolling**
* **responsive layout**

<a name="packages"></a>
## Main Packages Used

* **Flutter Bloc**
* **Freezed**
* **Cached Network Image**
* **Envied**

<a name="installation"></a>
## Installation
Update the `secret_keys.env` file in the root directory with your API key
```
TMDB_KEY='paste_your_API_key_here'
```

Then, run build runner for code generation in your terminal using this command:

```
dart run build_runner build --delete-conflicting-outputs
```
Then run the app on your desieried platform.
