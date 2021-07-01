// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RegisterCertificateWithoutCAInputBody: Equatable {
    public let certificatePem: String?
    public let status: CertificateStatus?
}

extension RegisterCertificateWithoutCAInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case certificatePem
        case status
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let certificatePemDecoded = try containerValues.decodeIfPresent(String.self, forKey: .certificatePem)
        certificatePem = certificatePemDecoded
        let statusDecoded = try containerValues.decodeIfPresent(CertificateStatus.self, forKey: .status)
        status = statusDecoded
    }
}