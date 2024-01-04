# Team AquaGrowth 

## How to start this repository
1. Install [Xcode15](https://developer.apple.com/xcode/) from apple.
2. After installing xcode setup your github account. Watch these videos
- [Setting up github in xcode](https://www.youtube.com/watch?v=RYDCwj37ous&t=61s)

3. Make sure to clone the repository and fetch changes.
4. Make sure you are able to commit, pull, and push changes onto the repository.
5. Please setup your own branch before pushing any changes. Do not immediately push to master branch.

## Running the xcode project on your apple device
1. Before running make sure you select privacy settings. Note: Services need to request permission to use bluetooth according to privacy laws.
2. In build contents → Info → Bundle version string (short) → + button
3. Add these two privacy settings. 
-  Privacy - Bluetooth Always Usage Description
-  Privacy - Bluetooth Peripheral Usage Description
Privacy - Bluetooth Always Usage Description
4. Afterward make sure the targetted build deployment is "ios 16.0" in the build settings.
5. Connect iPhone with lightning cable and run the build on your device. (As of now Jan 3, 2023 the build should succeeed with the current repo.)

## Files that currently need help in
- MainView.swift
- HomeView.swift
- PlantView.swift
- DiscoverView.swift
- AquaGrowthMobileApp.swift

Also feel free to add more files along the way.
## Files that shouldn't be modified as of now (Jan 3, 2023)
- ConnectView.swift
- PeripheralView.swift
- PeripheralViewModel.swift
- BluetoothModel.swift
