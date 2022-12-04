import Foundation

public protocol Decrypter {
    init()
    func decrypt(shaHash: String) -> String?
}
public struct CrackStation: Decrypter {

    var mvp_dict: Dictionary <String,String> = [:]
    public init() {
        do{
            guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else {return}
            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data) as? Dictionary<String, String> 
            mvp_dict = jsonResult ?? [:]
        } catch {
                print("Error Loading from dictionary")
        }
    }
    
    public func decrypt(shaHash: String) -> String? {
        let password = mvp_dict[shaHash]
        return password
    }  
}
