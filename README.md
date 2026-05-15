# Voxstrap

<p align="center">
    <img src="https://github.com/grootlikesgroot/Voxstrap/blob/main/Images/Voxstrap-Light.png?raw=true#gh-dark-mode-only" width="380">
    <img src="https://github.com/grootlikesgroot/Voxstrap/blob/main/Images/Voxstrap-Dark.png?raw=true#gh-light-mode-only" width="380">
</p>

----

Voxstrap is a custom, private fork of Bloxstrap that features a stealth C++ background runtime injector.

It acts just like the standard Roblox bootstrapper, providing additional useful features and improvements, but with an integrated memory injection system that silently pushes FastFlags directly into the running client without triggering standard detection checks.

### Features

- **Runtime FFlag Injection:** Bypasses local file checks by pushing flags directly into game memory the exact millisecond it launches using a custom compiled C++ DLL.
- Hassle-free Discord Rich Presence to let your friends know what you're playing at a glance.
- Simple support for modding of content files for customizability (death sound, mouse cursor, etc).
- See where your server is geographically located.
- Ability to configure graphics fidelity and UI experience.

### Installing

Head over to the [Releases page](../../releases/latest) and download `Voxstrap.exe`.


You will also need the [.NET 6 Desktop Runtime](https://aka.ms/dotnet-core-applaunch?missing_runtime=true&arch=x64&rid=win11-x64&apphost_version=6.0.16&gui=true). If you don't already have it installed, you'll be prompted to install it anyway.

## Code

Voxstrap's UI uses the [WPF UI](https://github.com/lepoco/wpfui) library.

### Disclaimer
This is a custom fork. We are not affiliated with the original Bloxstrap project.
