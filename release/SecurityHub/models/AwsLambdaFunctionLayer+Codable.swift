// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension AwsLambdaFunctionLayer: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case codeSize = "CodeSize"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if codeSize != 0 {
            try encodeContainer.encode(codeSize, forKey: .codeSize)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let codeSizeDecoded = try containerValues.decode(Int.self, forKey: .codeSize)
        codeSize = codeSizeDecoded
    }
}