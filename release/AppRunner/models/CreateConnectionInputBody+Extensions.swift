// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateConnectionInputBody: Equatable {
    public let connectionName: String?
    public let providerType: ProviderType?
    public let tags: [Tag]?
}

extension CreateConnectionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case connectionName = "ConnectionName"
        case providerType = "ProviderType"
        case tags = "Tags"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let connectionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .connectionName)
        connectionName = connectionNameDecoded
        let providerTypeDecoded = try containerValues.decodeIfPresent(ProviderType.self, forKey: .providerType)
        providerType = providerTypeDecoded
        let tagsContainer = try containerValues.decodeIfPresent([Tag?].self, forKey: .tags)
        var tagsDecoded0:[Tag]? = nil
        if let tagsContainer = tagsContainer {
            tagsDecoded0 = [Tag]()
            for structure0 in tagsContainer {
                if let structure0 = structure0 {
                    tagsDecoded0?.append(structure0)
                }
            }
        }
        tags = tagsDecoded0
    }
}