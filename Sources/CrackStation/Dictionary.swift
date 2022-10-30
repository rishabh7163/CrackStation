import Foundation
import Crypto

public class Dictionary {
    
    public func encryptSHA1(from input: String) -> String {
        let input = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: input)
        return output.description
    }

    var newDictionary = [String:String]()

    public func createLookupTable() -> [String:String]{

        for char in "abcdefghijklmnopqrstuvwxyz" {
            newDictionary[String(encryptSHA1(from: String(char)).suffix(40))] = String(char)
        }
        for char in "abcdefghijklmnopqrstuvwxyz" {
            newDictionary[String(encryptSHA1(from: String(char).uppercased()).suffix(40))] = String(char).uppercased()
        }
        for char in "0123456789" {
            newDictionary[String(encryptSHA1(from: String(char).uppercased()).suffix(40))] = String(char).uppercased()
        }
        let string = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        for i in string{
            for j in string{
                let newelement = String(i).appending(String(j))
                newDictionary[String(encryptSHA1(from: String(newelement)).suffix(40))] = String(newelement)
            }
        }
        return newDictionary;
    }

}
