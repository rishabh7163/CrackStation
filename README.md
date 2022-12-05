# CrackStation, a Decrypter Implementation

This is a Decrypter application that takes a SHA-1 or SHA-256 hash and decodes their password.This password is upto of three characters in length. These passwords are not salted.  

## Overview

This project has 3 stages:

* Create a simple application that can decrypt the SHA-1 key that is provided and convert that to its equivalent text(password in this case).
* This stage required us to generate a data file that contains all the possible sha keys and their text conversion. 
* After that, we created a function that relaced the data file with a lookup dictionary so that we don't have to hardcode the sha keys. It can decode up to 2 characters. 
* In the last stage(MVP) we generated more than 200k password combinations and they can be up to 3 characters (SHA-1 and SHA-256). 

## Mission Statement

This is a public library build in swift. This can used for testing purposes. The primary purpose of building this is to test a way to decrypt passwords up to three characters.These 3 characters includes any combination of [a-z,A-Z,0-9,?!]. 

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

2- Call Site:

        let password = CrackStation();
        let actual_password = password.decrypt(shaHash:"745ce947be584a9eea85fbd23672b840dae9da74")
        XCTAssertEqual(actaul_password,"??7")

## Author
Rishabh Srivastava
(Oregon State University)            


