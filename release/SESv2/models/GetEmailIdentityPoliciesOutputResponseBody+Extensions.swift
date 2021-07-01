// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetEmailIdentityPoliciesOutputResponseBody: Equatable {
    public let policies: [String:String]?
}

extension GetEmailIdentityPoliciesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case policies = "Policies"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let policiesContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .policies)
        var policiesDecoded0: [String:String]? = nil
        if let policiesContainer = policiesContainer {
            policiesDecoded0 = [String:String]()
            for (key0, policy0) in policiesContainer {
                if let policy0 = policy0 {
                    policiesDecoded0?[key0] = policy0
                }
            }
        }
        policies = policiesDecoded0
    }
}