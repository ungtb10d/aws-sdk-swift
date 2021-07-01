// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PreviewAgentsInputBody: Equatable {
    public let previewAgentsArn: String?
    public let nextToken: String?
    public let maxResults: Int?
}

extension PreviewAgentsInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case maxResults
        case nextToken
        case previewAgentsArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let previewAgentsArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .previewAgentsArn)
        previewAgentsArn = previewAgentsArnDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxResults)
        maxResults = maxResultsDecoded
    }
}