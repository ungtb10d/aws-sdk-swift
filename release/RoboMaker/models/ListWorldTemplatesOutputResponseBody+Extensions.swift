// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListWorldTemplatesOutputResponseBody: Equatable {
    public let templateSummaries: [TemplateSummary]?
    public let nextToken: String?
}

extension ListWorldTemplatesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken
        case templateSummaries
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let templateSummariesContainer = try containerValues.decodeIfPresent([TemplateSummary?].self, forKey: .templateSummaries)
        var templateSummariesDecoded0:[TemplateSummary]? = nil
        if let templateSummariesContainer = templateSummariesContainer {
            templateSummariesDecoded0 = [TemplateSummary]()
            for structure0 in templateSummariesContainer {
                if let structure0 = structure0 {
                    templateSummariesDecoded0?.append(structure0)
                }
            }
        }
        templateSummaries = templateSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}