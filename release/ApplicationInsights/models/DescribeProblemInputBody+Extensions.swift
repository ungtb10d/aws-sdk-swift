// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeProblemInputBody: Equatable {
    public let problemId: String?
}

extension DescribeProblemInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case problemId = "ProblemId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let problemIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .problemId)
        problemId = problemIdDecoded
    }
}