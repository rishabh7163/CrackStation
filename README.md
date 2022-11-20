# CrackStation, a Decrypter Implementation

This is a Decrypter application that takes up to three sha key and decodes their password. 

## Overview

This project has 3 stages:

* Create a simple application that can decrypt the sha key that is provided and convert that to its equivalent text(password in this case).
* This stage required us to generate a data file that contains all the possible sha keys and their text conversion. 
* After that, we created a function that relaced the data file with a lookup dictionary so that we don't have to hardcode the sha keys. It can decode up to 2 characters. 
* In the last stage(MVP) we generated more than 200k password combinations and they can be up to 3 characters. 

## Mission Statement

The primary purpose of building this is to test a way to decrypt passwords up to three characters and to get hands-on experience with swift. 

## Installation

### Swift Package Manager
The [swift package manager](https://www.swift.org/package-manager/) is a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the downloading, compiling, and linking of the dependencies. 
Once you have your Swift package set up, add Crackstation to  the list of dependencies in your Package.swift file: 
   
   .target(
            name: "CrackStation",
            dependencies: [.product(name: "Crypto", package: "swift-crypto")],
            resources: [.process("data.json")]),



## Usage

### The API
1- init() - The initializer of the decrypt.

public protocol Decrypter {
    init()

    
    func decrypt(shaHash: String) -> String?
}

### An Example

2- Call Site

let l = CrackStation();
        let final_test = l.decrypt(shaHash:"bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83")
        XCTAssertEqual(final_test,"Z")

## Author
Rishabh Srivastava
(Oregon State University)            


