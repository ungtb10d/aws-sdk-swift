// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateUnreferencedMergeCommitOutputResponseBody: Equatable {
    public let commitId: String?
    public let treeId: String?
}

extension CreateUnreferencedMergeCommitOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case commitId
        case treeId
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let commitIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .commitId)
        commitId = commitIdDecoded
        let treeIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .treeId)
        treeId = treeIdDecoded
    }
}