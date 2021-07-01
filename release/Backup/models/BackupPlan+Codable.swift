// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BackupPlan: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case advancedBackupSettings = "AdvancedBackupSettings"
        case backupPlanName = "BackupPlanName"
        case rules = "Rules"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let advancedBackupSettings = advancedBackupSettings {
            var advancedBackupSettingsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .advancedBackupSettings)
            for advancedbackupsettings0 in advancedBackupSettings {
                try advancedBackupSettingsContainer.encode(advancedbackupsettings0)
            }
        }
        if let backupPlanName = backupPlanName {
            try encodeContainer.encode(backupPlanName, forKey: .backupPlanName)
        }
        if let rules = rules {
            var rulesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .rules)
            for backuprules0 in rules {
                try rulesContainer.encode(backuprules0)
            }
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let backupPlanNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .backupPlanName)
        backupPlanName = backupPlanNameDecoded
        let rulesContainer = try containerValues.decodeIfPresent([BackupRule?].self, forKey: .rules)
        var rulesDecoded0:[BackupRule]? = nil
        if let rulesContainer = rulesContainer {
            rulesDecoded0 = [BackupRule]()
            for structure0 in rulesContainer {
                if let structure0 = structure0 {
                    rulesDecoded0?.append(structure0)
                }
            }
        }
        rules = rulesDecoded0
        let advancedBackupSettingsContainer = try containerValues.decodeIfPresent([AdvancedBackupSetting?].self, forKey: .advancedBackupSettings)
        var advancedBackupSettingsDecoded0:[AdvancedBackupSetting]? = nil
        if let advancedBackupSettingsContainer = advancedBackupSettingsContainer {
            advancedBackupSettingsDecoded0 = [AdvancedBackupSetting]()
            for structure0 in advancedBackupSettingsContainer {
                if let structure0 = structure0 {
                    advancedBackupSettingsDecoded0?.append(structure0)
                }
            }
        }
        advancedBackupSettings = advancedBackupSettingsDecoded0
    }
}