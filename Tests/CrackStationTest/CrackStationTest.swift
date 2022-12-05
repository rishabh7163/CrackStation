import XCTest

@testable import CrackStation


final class CrackStationTest: XCTestCase{
    func testcrackstationtesting(){
        let password = CrackStation();
        let actual_password = password.decrypt(shaHash:"745ce947be584a9eea85fbd23672b840dae9da74")
        XCTAssertEqual(actaul_password,"??7")

    }
}
