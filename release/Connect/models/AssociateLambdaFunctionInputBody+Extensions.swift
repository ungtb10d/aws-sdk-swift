// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct AssociateLambdaFunctionInputBody: Equatable {
    public let functionArn: String?
}

extension AssociateLambdaFunctionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case functionArn = "FunctionArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let functionArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .functionArn)
        functionArn = functionArnDecoded
    }
}