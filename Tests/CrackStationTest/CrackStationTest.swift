import XCTest

@testable import CrackStation


final class CrackStationTest: XCTestCase{
    func testcrackstationtesting(){
        let l = CrackStation();
        let final_test = l.decrypt(shaHash:"745ce947be584a9eea85fbd23672b840dae9da74")
        XCTAssertEqual(final_test,"??7")

    }
}
