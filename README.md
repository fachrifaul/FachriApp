## Improve Your Team's Productivity With XcodeGen

https://github.com/SwiftyID/Meetup/issues/12

This is the accompanying sample code containing simple `project.yml` to generate Xcode project on-demand.

Steps:
1. Open iTerm (or Terminal.app) and install [Homebrew](https://brew.sh/) (you can skip installing Homebrew if it already installed).
2. Install XcodeGen via `brew install xcodegen` command.
3. Since this project demonstrates Carthage integration with XcodeGen, install [Carthage](https://github.com/Carthage/Carthage) first.
4. Clone this repository and `cd` to its root folder.
5. Run `carthage update`.
6. Run `xcodegen` (or `xcodegen generate` on newest version) to generate the main project file (`.xcodeproj`).
7. Open the project file from Finder or `open SwiftyApp.xcodeproj` command.
8. Wait for Xcode to launch, then Build and Run.

Feel free to contact me on mailtaufik at gmail dot com if you find any issues or seek more advanced Xcodegen usages.
