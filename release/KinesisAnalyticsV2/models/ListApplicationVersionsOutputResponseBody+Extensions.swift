// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListApplicationVersionsOutputResponseBody: Equatable {
    public let applicationVersionSummaries: [ApplicationVersionSummary]?
    public let nextToken: String?
}

extension ListApplicationVersionsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case applicationVersionSummaries = "ApplicationVersionSummaries"
        case nextToken = "NextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let applicationVersionSummariesContainer = try containerValues.decodeIfPresent([ApplicationVersionSummary?].self, forKey: .applicationVersionSummaries)
        var applicationVersionSummariesDecoded0:[ApplicationVersionSummary]? = nil
        if let applicationVersionSummariesContainer = applicationVersionSummariesContainer {
            applicationVersionSummariesDecoded0 = [ApplicationVersionSummary]()
            for structure0 in applicationVersionSummariesContainer {
                if let structure0 = structure0 {
                    applicationVersionSummariesDecoded0?.append(structure0)
                }
            }
        }
        applicationVersionSummaries = applicationVersionSummariesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}