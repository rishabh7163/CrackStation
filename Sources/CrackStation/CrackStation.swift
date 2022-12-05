import Foundation

public class CrackStation: Decrypter {

    private let mvp_dict : [String:String] = [:]
    
    required public init(){
        mvp_dict = self.loadDictionaryFromDisk()
    }


    public func decrypt(shaHash : String) -> String? {
        return mvp_dict[shaHash];
}

    public func loadDictionaryFromDisk() -> [String : String] {
        guard let path: URL = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        do {
            let data: Data = try Data(contentsOf: path)
            let jsonResult: Any = try JSONSerialization.jsonObject(with: data)
            let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> ?? [:]
            return lookupTable
        
        } catch {
            return [:]
        }
    }
}
