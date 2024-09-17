# Swift Networking Study

This repository is dedicated to preserving and studying various methods of implementing networking in Swift. Whether you're a seasoned developer or just starting out, this project provides valuable insights into different networking approaches, architectural patterns, and testing strategies within the Swift ecosystem.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Networking Approaches](#networking-approaches)
  - [Completion Handlers](#completion-handlers)
  - [Async/Await & Swift Concurrency](#asyncawait--swift-concurrency)
- [Architecture](#architecture)
- [Unit Testing](#unit-testing)
- [Getting Started](#getting-started)
- [API Reference](#api-reference)
- [Contributing](#contributing)
- [License](#license)

## Overview

The primary goal of this repository is not to build a complex application but to demonstrate how to implement networking in Swift using the [CoinGecko API](https://www.coingecko.com/en/api). Through this project, you'll learn various networking techniques, explore advanced networking architectures, and understand how to write effective unit tests for your networking code.

## Features

- **Simple Coin List App:** A straightforward application that fetches and displays the price and brand of various cryptocurrencies.
- **Multiple Networking Methods:** Explore both traditional completion handlers and modern async/await patterns for handling network requests.
- **Advanced Networking Architecture:** Learn about scalable and maintainable networking architectures suitable for real-world applications.
- **Unit Testing:** Implement and understand unit tests to ensure the reliability and correctness of your networking code.

## Networking Approaches

### Completion Handlers

This repository includes examples of networking code implemented using completion handlers. Although this approach has been widely used in the past, it can lead to complex and hard-to-maintain code, especially when dealing with multiple asynchronous operations.



# Troubleshooting Logging Error in Xcode Simulator

IDEPrefLogStreaming=YES in the active scheme actions environment variables.


indicates an issue related to Xcode's logging configuration. Below are steps to help you resolve this problem.

## Possible Causes

1. **Misconfigured Environment Variables:** The `IDEPrefLogStreaming` environment variable might be incorrectly set in your active scheme.
2. **Xcode Bug:** Occasionally, Xcode may have bugs related to logging, especially in specific versions.
3. **Corrupted Xcode Preferences:** Corrupted preference files can lead to unexpected behavior.

## Solutions

### 1. Check and Modify Scheme Environment Variables

Ensure that the `IDEPrefLogStreaming` environment variable is correctly configured or remove it if it's unnecessary.

#### Steps:

1. **Open Your Project in Xcode:**
   - Launch Xcode and open your project.

2. **Access Scheme Settings:**
   - Navigate to the top toolbar and select your current scheme (next to the Run and Stop buttons).
   - Click on the scheme dropdown and choose **"Edit Scheme..."**.

   ![Edit Scheme](https://i.imgur.com/YourImageLink.png)

3. **Navigate to Run Scheme:**
   - In the sidebar, select **"Run"**.

4. **Check Environment Variables:**
   - Click on the **"Arguments"** tab.
   - Under **"Environment Variables"**, look for `IDEPrefLogStreaming`.

5. **Modify or Remove the Variable:**
   - If `IDEPrefLogStreaming` is set to `YES`, try removing it by selecting the variable and clicking the **"-"** button.
   - Alternatively, set its value to `NO`.

6. **Apply Changes:**
   - Click **"Close"** to save your changes.

7. **Clean and Rebuild:**
   - Go to **Product > Clean Build Folder** (`Shift + Command + K`).
   - Then, build and run your project again.

### 2. Reset Xcode's Derived Data

Corrupted derived data can cause various issues, including logging errors.

#### Steps:

1. **Open Xcode Preferences:**
   - Go to **Xcode > Preferences** (`Command + ,`).

2. **Navigate to Locations:**
   - Click on the **"Locations"** tab.

3. **Open Derived Data Folder:**
   - Click the arrow next to the **"Derived Data"** path to open it in Finder.

4. **Delete Derived Data:**
   - Delete the contents of the **Derived Data** folder.

5. **Restart Xcode:**
   - Close and reopen Xcode.

6. **Build and Run:**
   - Try building and running your project again.

### 3. Update or Reinstall Xcode

If the issue persists, it might be related to a bug in your current version of Xcode.

#### Steps:

1. **Check for Updates:**
   - Open the **App Store** and go to the **Updates** tab.
   - If an Xcode update is available, install it.

2. **Reinstall Xcode:**
   - If updating doesn't help, consider reinstalling Xcode.
   - **Backup** your projects before proceeding.
   - Delete Xcode from the **Applications** folder.
   - Download the latest version from the [Mac App Store](https://apps.apple.com/us/app/xcode/id497799835?mt=12) or [Apple Developer](https://developer.apple.com/xcode/).

3. **Set Up Again:**
   - After reinstalling, open Xcode, set up your preferences, and try running your project.

### 4. Restart Your Mac

Sometimes, a simple system restart can resolve unexpected issues.

#### Steps:

1. **Save All Work:**
   - Ensure all your work is saved.

2. **Restart:**
   - Click on the **Apple** logo in the top-left corner and select **"Restart..."**.

3. **Run Your Project:**
   - After restarting, open Xcode and try running your project again.

## Additional Tips

- **Check Console Logs:** Open the **Console** app (`Applications > Utilities > Console`) to see if there are more detailed error messages that can provide further insights.
- **Search Developer Forums:** Platforms like [Apple Developer Forums](https://developer.apple.com/forums/) or [Stack Overflow](https://stackoverflow.com/) can have discussions about similar issues.
- **Contact Apple Support:** If the problem persists, consider reaching out to [Apple Developer Support](https://developer.apple.com/support/) for assistance.

## Conclusion

Logging errors can be frustrating, but by systematically checking environment variables, cleaning derived data, updating Xcode, and restarting your system, you can often resolve these issues. If you continue to face problems, don't hesitate to seek help from the developer community or Apple Support.