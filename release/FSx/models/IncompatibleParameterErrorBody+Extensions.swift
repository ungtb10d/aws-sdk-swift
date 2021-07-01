// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct IncompatibleParameterErrorBody: Equatable {
    public let parameter: String?
    public let message: String?
}

extension IncompatibleParameterErrorBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
        case parameter = "Parameter"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let parameterDecoded = try containerValues.decodeIfPresent(String.self, forKey: .parameter)
        parameter = parameterDecoded
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}