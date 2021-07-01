// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LambdaConflictHandlerConfig: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case lambdaConflictHandlerArn
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let lambdaConflictHandlerArn = lambdaConflictHandlerArn {
            try encodeContainer.encode(lambdaConflictHandlerArn, forKey: .lambdaConflictHandlerArn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let lambdaConflictHandlerArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .lambdaConflictHandlerArn)
        lambdaConflictHandlerArn = lambdaConflictHandlerArnDecoded
    }
}