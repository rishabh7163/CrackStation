import Foundation

public class CrackStation: Decrypter{

    
    required public init(){}


    public func decrypt(shaHash : String) -> String? {
        let l = Dictionary();
        let a: [String : String] = l.createLookupTable();
        return a[shaHash];
}
}