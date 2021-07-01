// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DecryptInputBody: Equatable {
    public let ciphertextBlob: Data?
    public let encryptionContext: [String:String]?
    public let grantTokens: [String]?
    public let keyId: String?
    public let encryptionAlgorithm: EncryptionAlgorithmSpec?
}

extension DecryptInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case ciphertextBlob = "CiphertextBlob"
        case encryptionAlgorithm = "EncryptionAlgorithm"
        case encryptionContext = "EncryptionContext"
        case grantTokens = "GrantTokens"
        case keyId = "KeyId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let ciphertextBlobDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .ciphertextBlob)
        ciphertextBlob = ciphertextBlobDecoded
        let encryptionContextContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .encryptionContext)
        var encryptionContextDecoded0: [String:String]? = nil
        if let encryptionContextContainer = encryptionContextContainer {
            encryptionContextDecoded0 = [String:String]()
            for (key0, encryptioncontextvalue0) in encryptionContextContainer {
                if let encryptioncontextvalue0 = encryptioncontextvalue0 {
                    encryptionContextDecoded0?[key0] = encryptioncontextvalue0
                }
            }
        }
        encryptionContext = encryptionContextDecoded0
        let grantTokensContainer = try containerValues.decodeIfPresent([String?].self, forKey: .grantTokens)
        var grantTokensDecoded0:[String]? = nil
        if let grantTokensContainer = grantTokensContainer {
            grantTokensDecoded0 = [String]()
            for string0 in grantTokensContainer {
                if let string0 = string0 {
                    grantTokensDecoded0?.append(string0)
                }
            }
        }
        grantTokens = grantTokensDecoded0
        let keyIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keyId)
        keyId = keyIdDecoded
        let encryptionAlgorithmDecoded = try containerValues.decodeIfPresent(EncryptionAlgorithmSpec.self, forKey: .encryptionAlgorithm)
        encryptionAlgorithm = encryptionAlgorithmDecoded
    }
}