// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateLicenseConfigurationOutputResponseBody: Equatable {
    public let licenseConfigurationArn: String?
}

extension CreateLicenseConfigurationOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case licenseConfigurationArn = "LicenseConfigurationArn"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let licenseConfigurationArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .licenseConfigurationArn)
        licenseConfigurationArn = licenseConfigurationArnDecoded
    }
}