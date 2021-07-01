// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeCACertificateOutputResponseBody: Equatable {
    public let certificateDescription: CACertificateDescription?
    public let registrationConfig: RegistrationConfig?
}

extension DescribeCACertificateOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case certificateDescription
        case registrationConfig
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let certificateDescriptionDecoded = try containerValues.decodeIfPresent(CACertificateDescription.self, forKey: .certificateDescription)
        certificateDescription = certificateDescriptionDecoded
        let registrationConfigDecoded = try containerValues.decodeIfPresent(RegistrationConfig.self, forKey: .registrationConfig)
        registrationConfig = registrationConfigDecoded
    }
}