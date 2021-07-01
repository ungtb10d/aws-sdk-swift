// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetContactMethodsInputBody: Equatable {
    public let protocols: [ContactProtocol]?
}

extension GetContactMethodsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case protocols
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let protocolsContainer = try containerValues.decodeIfPresent([ContactProtocol?].self, forKey: .protocols)
        var protocolsDecoded0:[ContactProtocol]? = nil
        if let protocolsContainer = protocolsContainer {
            protocolsDecoded0 = [ContactProtocol]()
            for string0 in protocolsContainer {
                if let string0 = string0 {
                    protocolsDecoded0?.append(string0)
                }
            }
        }
        protocols = protocolsDecoded0
    }
}