// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct UpdatePullRequestTitleInputBody: Equatable {
    public let pullRequestId: String?
    public let title: String?
}

extension UpdatePullRequestTitleInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case pullRequestId
        case title
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pullRequestIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .pullRequestId)
        pullRequestId = pullRequestIdDecoded
        let titleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .title)
        title = titleDecoded
    }
}