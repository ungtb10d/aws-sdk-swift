// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OneDriveConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case disableLocalGroups = "DisableLocalGroups"
        case exclusionPatterns = "ExclusionPatterns"
        case fieldMappings = "FieldMappings"
        case inclusionPatterns = "InclusionPatterns"
        case oneDriveUsers = "OneDriveUsers"
        case secretArn = "SecretArn"
        case tenantDomain = "TenantDomain"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if disableLocalGroups != false {
            try encodeContainer.encode(disableLocalGroups, forKey: .disableLocalGroups)
        }
        if let exclusionPatterns = exclusionPatterns {
            var exclusionPatternsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .exclusionPatterns)
            for datasourceinclusionsexclusionsstrings0 in exclusionPatterns {
                try exclusionPatternsContainer.encode(datasourceinclusionsexclusionsstrings0)
            }
        }
        if let fieldMappings = fieldMappings {
            var fieldMappingsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .fieldMappings)
            for datasourcetoindexfieldmappinglist0 in fieldMappings {
                try fieldMappingsContainer.encode(datasourcetoindexfieldmappinglist0)
            }
        }
        if let inclusionPatterns = inclusionPatterns {
            var inclusionPatternsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .inclusionPatterns)
            for datasourceinclusionsexclusionsstrings0 in inclusionPatterns {
                try inclusionPatternsContainer.encode(datasourceinclusionsexclusionsstrings0)
            }
        }
        if let oneDriveUsers = oneDriveUsers {
            try encodeContainer.encode(oneDriveUsers, forKey: .oneDriveUsers)
        }
        if let secretArn = secretArn {
            try encodeContainer.encode(secretArn, forKey: .secretArn)
        }
        if let tenantDomain = tenantDomain {
            try encodeContainer.encode(tenantDomain, forKey: .tenantDomain)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tenantDomainDecoded = try containerValues.decodeIfPresent(String.self, forKey: .tenantDomain)
        tenantDomain = tenantDomainDecoded
        let secretArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .secretArn)
        secretArn = secretArnDecoded
        let oneDriveUsersDecoded = try containerValues.decodeIfPresent(OneDriveUsers.self, forKey: .oneDriveUsers)
        oneDriveUsers = oneDriveUsersDecoded
        let inclusionPatternsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .inclusionPatterns)
        var inclusionPatternsDecoded0:[String]? = nil
        if let inclusionPatternsContainer = inclusionPatternsContainer {
            inclusionPatternsDecoded0 = [String]()
            for string0 in inclusionPatternsContainer {
                if let string0 = string0 {
                    inclusionPatternsDecoded0?.append(string0)
                }
            }
        }
        inclusionPatterns = inclusionPatternsDecoded0
        let exclusionPatternsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .exclusionPatterns)
        var exclusionPatternsDecoded0:[String]? = nil
        if let exclusionPatternsContainer = exclusionPatternsContainer {
            exclusionPatternsDecoded0 = [String]()
            for string0 in exclusionPatternsContainer {
                if let string0 = string0 {
                    exclusionPatternsDecoded0?.append(string0)
                }
            }
        }
        exclusionPatterns = exclusionPatternsDecoded0
        let fieldMappingsContainer = try containerValues.decodeIfPresent([DataSourceToIndexFieldMapping?].self, forKey: .fieldMappings)
        var fieldMappingsDecoded0:[DataSourceToIndexFieldMapping]? = nil
        if let fieldMappingsContainer = fieldMappingsContainer {
            fieldMappingsDecoded0 = [DataSourceToIndexFieldMapping]()
            for structure0 in fieldMappingsContainer {
                if let structure0 = structure0 {
                    fieldMappingsDecoded0?.append(structure0)
                }
            }
        }
        fieldMappings = fieldMappingsDecoded0
        let disableLocalGroupsDecoded = try containerValues.decode(Bool.self, forKey: .disableLocalGroups)
        disableLocalGroups = disableLocalGroupsDecoded
    }
}