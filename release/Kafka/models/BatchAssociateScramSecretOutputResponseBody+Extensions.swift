// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct BatchAssociateScramSecretOutputResponseBody: Equatable {
    public let clusterArn: String?
    public let unprocessedScramSecrets: [UnprocessedScramSecret]?
}

extension BatchAssociateScramSecretOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case clusterArn = "clusterArn"
        case unprocessedScramSecrets = "unprocessedScramSecrets"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let clusterArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .clusterArn)
        clusterArn = clusterArnDecoded
        let unprocessedScramSecretsContainer = try containerValues.decodeIfPresent([UnprocessedScramSecret?].self, forKey: .unprocessedScramSecrets)
        var unprocessedScramSecretsDecoded0:[UnprocessedScramSecret]? = nil
        if let unprocessedScramSecretsContainer = unprocessedScramSecretsContainer {
            unprocessedScramSecretsDecoded0 = [UnprocessedScramSecret]()
            for structure0 in unprocessedScramSecretsContainer {
                if let structure0 = structure0 {
                    unprocessedScramSecretsDecoded0?.append(structure0)
                }
            }
        }
        unprocessedScramSecrets = unprocessedScramSecretsDecoded0
    }
}