// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OrganizationConfigRule: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case excludedAccounts = "ExcludedAccounts"
        case lastUpdateTime = "LastUpdateTime"
        case organizationConfigRuleArn = "OrganizationConfigRuleArn"
        case organizationConfigRuleName = "OrganizationConfigRuleName"
        case organizationCustomRuleMetadata = "OrganizationCustomRuleMetadata"
        case organizationManagedRuleMetadata = "OrganizationManagedRuleMetadata"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let excludedAccounts = excludedAccounts {
            var excludedAccountsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .excludedAccounts)
            for excludedaccounts0 in excludedAccounts {
                try excludedAccountsContainer.encode(excludedaccounts0)
            }
        }
        if let lastUpdateTime = lastUpdateTime {
            try encodeContainer.encode(lastUpdateTime.timeIntervalSince1970, forKey: .lastUpdateTime)
        }
        if let organizationConfigRuleArn = organizationConfigRuleArn {
            try encodeContainer.encode(organizationConfigRuleArn, forKey: .organizationConfigRuleArn)
        }
        if let organizationConfigRuleName = organizationConfigRuleName {
            try encodeContainer.encode(organizationConfigRuleName, forKey: .organizationConfigRuleName)
        }
        if let organizationCustomRuleMetadata = organizationCustomRuleMetadata {
            try encodeContainer.encode(organizationCustomRuleMetadata, forKey: .organizationCustomRuleMetadata)
        }
        if let organizationManagedRuleMetadata = organizationManagedRuleMetadata {
            try encodeContainer.encode(organizationManagedRuleMetadata, forKey: .organizationManagedRuleMetadata)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let organizationConfigRuleNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .organizationConfigRuleName)
        organizationConfigRuleName = organizationConfigRuleNameDecoded
        let organizationConfigRuleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .organizationConfigRuleArn)
        organizationConfigRuleArn = organizationConfigRuleArnDecoded
        let organizationManagedRuleMetadataDecoded = try containerValues.decodeIfPresent(OrganizationManagedRuleMetadata.self, forKey: .organizationManagedRuleMetadata)
        organizationManagedRuleMetadata = organizationManagedRuleMetadataDecoded
        let organizationCustomRuleMetadataDecoded = try containerValues.decodeIfPresent(OrganizationCustomRuleMetadata.self, forKey: .organizationCustomRuleMetadata)
        organizationCustomRuleMetadata = organizationCustomRuleMetadataDecoded
        let excludedAccountsContainer = try containerValues.decodeIfPresent([String?].self, forKey: .excludedAccounts)
        var excludedAccountsDecoded0:[String]? = nil
        if let excludedAccountsContainer = excludedAccountsContainer {
            excludedAccountsDecoded0 = [String]()
            for string0 in excludedAccountsContainer {
                if let string0 = string0 {
                    excludedAccountsDecoded0?.append(string0)
                }
            }
        }
        excludedAccounts = excludedAccountsDecoded0
        let lastUpdateTimeDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .lastUpdateTime)
        lastUpdateTime = lastUpdateTimeDecoded
    }
}