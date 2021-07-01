// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetRecoveryPointRestoreMetadataOutputResponseBody: Equatable {
    public let backupVaultArn: String?
    public let recoveryPointArn: String?
    public let restoreMetadata: [String:String]?
}

extension GetRecoveryPointRestoreMetadataOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case backupVaultArn = "BackupVaultArn"
        case recoveryPointArn = "RecoveryPointArn"
        case restoreMetadata = "RestoreMetadata"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let backupVaultArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .backupVaultArn)
        backupVaultArn = backupVaultArnDecoded
        let recoveryPointArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .recoveryPointArn)
        recoveryPointArn = recoveryPointArnDecoded
        let restoreMetadataContainer = try containerValues.decodeIfPresent([String: String?].self, forKey: .restoreMetadata)
        var restoreMetadataDecoded0: [String:String]? = nil
        if let restoreMetadataContainer = restoreMetadataContainer {
            restoreMetadataDecoded0 = [String:String]()
            for (key0, metadatavalue0) in restoreMetadataContainer {
                if let metadatavalue0 = metadatavalue0 {
                    restoreMetadataDecoded0?[key0] = metadatavalue0
                }
            }
        }
        restoreMetadata = restoreMetadataDecoded0
    }
}