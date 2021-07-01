// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SuiteDefinitionConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case devicePermissionRoleArn
        case devices
        case intendedForQualification
        case rootGroup
        case suiteDefinitionName
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let devicePermissionRoleArn = devicePermissionRoleArn {
            try encodeContainer.encode(devicePermissionRoleArn, forKey: .devicePermissionRoleArn)
        }
        if let devices = devices {
            var devicesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .devices)
            for deviceundertestlist0 in devices {
                try devicesContainer.encode(deviceundertestlist0)
            }
        }
        if intendedForQualification != false {
            try encodeContainer.encode(intendedForQualification, forKey: .intendedForQualification)
        }
        if let rootGroup = rootGroup {
            try encodeContainer.encode(rootGroup, forKey: .rootGroup)
        }
        if let suiteDefinitionName = suiteDefinitionName {
            try encodeContainer.encode(suiteDefinitionName, forKey: .suiteDefinitionName)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let suiteDefinitionNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .suiteDefinitionName)
        suiteDefinitionName = suiteDefinitionNameDecoded
        let devicesContainer = try containerValues.decodeIfPresent([DeviceUnderTest?].self, forKey: .devices)
        var devicesDecoded0:[DeviceUnderTest]? = nil
        if let devicesContainer = devicesContainer {
            devicesDecoded0 = [DeviceUnderTest]()
            for structure0 in devicesContainer {
                if let structure0 = structure0 {
                    devicesDecoded0?.append(structure0)
                }
            }
        }
        devices = devicesDecoded0
        let intendedForQualificationDecoded = try containerValues.decode(Bool.self, forKey: .intendedForQualification)
        intendedForQualification = intendedForQualificationDecoded
        let rootGroupDecoded = try containerValues.decodeIfPresent(String.self, forKey: .rootGroup)
        rootGroup = rootGroupDecoded
        let devicePermissionRoleArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .devicePermissionRoleArn)
        devicePermissionRoleArn = devicePermissionRoleArnDecoded
    }
}