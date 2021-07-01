// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetClientCertificatesOutputResponseBody: Equatable {
    public let items: [ClientCertificate]?
}

extension GetClientCertificatesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case items = "item"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemsContainer = try containerValues.decodeIfPresent([ClientCertificate?].self, forKey: .items)
        var itemsDecoded0:[ClientCertificate]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [ClientCertificate]()
            for structure0 in itemsContainer {
                if let structure0 = structure0 {
                    itemsDecoded0?.append(structure0)
                }
            }
        }
        items = itemsDecoded0
    }
}