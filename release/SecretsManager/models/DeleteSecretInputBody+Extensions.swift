// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DeleteSecretInputBody: Equatable {
    public let secretId: String?
    public let recoveryWindowInDays: Int
    public let forceDeleteWithoutRecovery: Bool
}

extension DeleteSecretInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case forceDeleteWithoutRecovery = "ForceDeleteWithoutRecovery"
        case recoveryWindowInDays = "RecoveryWindowInDays"
        case secretId = "SecretId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let secretIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretId)
        secretId = secretIdDecoded
        let recoveryWindowInDaysDecoded = try containerValues.decode(Int.self, forKey: .recoveryWindowInDays)
        recoveryWindowInDays = recoveryWindowInDaysDecoded
        let forceDeleteWithoutRecoveryDecoded = try containerValues.decode(Bool.self, forKey: .forceDeleteWithoutRecovery)
        forceDeleteWithoutRecovery = forceDeleteWithoutRecoveryDecoded
    }
}