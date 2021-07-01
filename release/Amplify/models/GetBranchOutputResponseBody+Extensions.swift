// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetBranchOutputResponseBody: Equatable {
    public let branch: Branch?
}

extension GetBranchOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case branch
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let branchDecoded = try containerValues.decodeIfPresent(Branch.self, forKey: .branch)
        branch = branchDecoded
    }
}