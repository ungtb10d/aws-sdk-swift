// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SidewalkListDevice: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case amazonId = "AmazonId"
        case deviceCertificates = "DeviceCertificates"
        case sidewalkId = "SidewalkId"
        case sidewalkManufacturingSn = "SidewalkManufacturingSn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let amazonId = amazonId {
            try encodeContainer.encode(amazonId, forKey: .amazonId)
        }
        if let deviceCertificates = deviceCertificates {
            var deviceCertificatesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .deviceCertificates)
            for devicecertificatelist0 in deviceCertificates {
                try deviceCertificatesContainer.encode(devicecertificatelist0)
            }
        }
        if let sidewalkId = sidewalkId {
            try encodeContainer.encode(sidewalkId, forKey: .sidewalkId)
        }
        if let sidewalkManufacturingSn = sidewalkManufacturingSn {
            try encodeContainer.encode(sidewalkManufacturingSn, forKey: .sidewalkManufacturingSn)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let amazonIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .amazonId)
        amazonId = amazonIdDecoded
        let sidewalkIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sidewalkId)
        sidewalkId = sidewalkIdDecoded
        let sidewalkManufacturingSnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .sidewalkManufacturingSn)
        sidewalkManufacturingSn = sidewalkManufacturingSnDecoded
        let deviceCertificatesContainer = try containerValues.decodeIfPresent([CertificateList?].self, forKey: .deviceCertificates)
        var deviceCertificatesDecoded0:[CertificateList]? = nil
        if let deviceCertificatesContainer = deviceCertificatesContainer {
            deviceCertificatesDecoded0 = [CertificateList]()
            for structure0 in deviceCertificatesContainer {
                if let structure0 = structure0 {
                    deviceCertificatesDecoded0?.append(structure0)
                }
            }
        }
        deviceCertificates = deviceCertificatesDecoded0
    }
}