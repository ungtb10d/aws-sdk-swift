// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteSolutionInputBody: Equatable {
    public let solutionArn: String?
}

extension DeleteSolutionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case solutionArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let solutionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .solutionArn)
        solutionArn = solutionArnDecoded
    }
}