// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteStateMachineInputBody: Equatable {
    public let stateMachineArn: String?
}

extension DeleteStateMachineInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case stateMachineArn
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let stateMachineArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .stateMachineArn)
        stateMachineArn = stateMachineArnDecoded
    }
}