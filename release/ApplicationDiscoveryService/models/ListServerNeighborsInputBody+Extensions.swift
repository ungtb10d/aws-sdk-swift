// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListServerNeighborsInputBody: Equatable {
    public let configurationId: String?
    public let portInformationNeeded: Bool
    public let neighborConfigurationIds: [String]?
    public let maxResults: Int
    public let nextToken: String?
}

extension ListServerNeighborsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case configurationId
        case maxResults
        case neighborConfigurationIds
        case nextToken
        case portInformationNeeded
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let configurationIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .configurationId)
        configurationId = configurationIdDecoded
        let portInformationNeededDecoded = try containerValues.decode(Bool.self, forKey: .portInformationNeeded)
        portInformationNeeded = portInformationNeededDecoded
        let neighborConfigurationIdsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .neighborConfigurationIds)
        var neighborConfigurationIdsDecoded0:[String]? = nil
        if let neighborConfigurationIdsContainer = neighborConfigurationIdsContainer {
            neighborConfigurationIdsDecoded0 = [String]()
            for string0 in neighborConfigurationIdsContainer {
                if let string0 = string0 {
                    neighborConfigurationIdsDecoded0?.append(string0)
                }
            }
        }
        neighborConfigurationIds = neighborConfigurationIdsDecoded0
        let maxResultsDecoded = try containerValues.decode(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}