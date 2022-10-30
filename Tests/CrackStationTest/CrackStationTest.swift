import XCTest

@testable import CrackStation

final class CrackStationTest: XCTestCase{
    func testcrackstationtesting(){
        let l = CrackStation();
        //let ans = l.decrypt(shaHash:"2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6")
        let ans2 = l.decrypt(shaHash:"86f7e437faa5a7fce15d1ddcb9eaeaea377667b8")

        //XCTAssertEqual(ans!,"c")
        XCTAssertEqual(ans2,"a")

    }
}