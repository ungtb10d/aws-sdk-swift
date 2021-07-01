// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteAlertInputBody: Equatable {
    public let alertArn: String?
}

extension DeleteAlertInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case alertArn = "AlertArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let alertArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .alertArn)
        alertArn = alertArnDecoded
    }
}