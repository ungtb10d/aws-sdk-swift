// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CertificateConfiguration: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case certificateType = "CertificateType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let certificateType = certificateType {
            try encodeContainer.encode(certificateType.rawValue, forKey: .certificateType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let certificateTypeDecoded = try containerValues.decodeIfPresent(CertificateType.self, forKey: .certificateType)
        certificateType = certificateTypeDecoded
    }
}