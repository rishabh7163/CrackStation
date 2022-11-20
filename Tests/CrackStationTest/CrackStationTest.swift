import XCTest

@testable import CrackStation


final class CrackStationTest: XCTestCase{
    func testcrackstationtesting(){
        let l = CrackStation();
        let final_test = l.decrypt(shaHash:"bbeebd879e1dff6918546dc0c179fdde505f2a21591c9a9c96e36b054ec5af83")
        XCTAssertEqual(final_test,"Z")

    }
}
