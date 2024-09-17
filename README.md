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
