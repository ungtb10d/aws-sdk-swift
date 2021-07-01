// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreatePolicyVersionInputBody: Equatable {
    public let policyDocument: String?
}

extension CreatePolicyVersionInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policyDocument
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policyDocumentDecoded = try containerValues.decodeIfPresent(String.self, forKey: .policyDocument)
        policyDocument = policyDocumentDecoded
    }
}