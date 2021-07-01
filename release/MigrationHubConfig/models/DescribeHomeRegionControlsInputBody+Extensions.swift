// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeHomeRegionControlsInputBody: Equatable {
    public let controlId: String?
    public let homeRegion: String?
    public let target: Target?
    public let maxResults: Int?
    public let nextToken: String?
}

extension DescribeHomeRegionControlsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case controlId = "ControlId"
        case homeRegion = "HomeRegion"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case target = "Target"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let controlIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .controlId)
        controlId = controlIdDecoded
        let homeRegionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .homeRegion)
        homeRegion = homeRegionDecoded
        let targetDecoded = try containerValues.decodeIfPresent(Target.self, forKey: .target)
        target = targetDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}