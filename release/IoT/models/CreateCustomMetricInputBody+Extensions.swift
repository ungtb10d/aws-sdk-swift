// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateCustomMetricInputBody: Equatable {
    public let displayName: String?
    public let metricType: CustomMetricType?
    public let tags: [Tag]?
    public let clientRequestToken: String?
}

extension CreateCustomMetricInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clientRequestToken
        case displayName
        case metricType
        case tags
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let displayNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .displayName)
        displayName = displayNameDecoded
        let metricTypeDecoded = try containerValues.decodeIfPresent(CustomMetricType.self, forKey: .metricType)
        metricType = metricTypeDecoded
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
        let clientRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clientRequestToken)
        clientRequestToken = clientRequestTokenDecoded
    }
}