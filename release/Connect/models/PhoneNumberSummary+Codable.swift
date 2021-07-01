// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PhoneNumberSummary: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case arn = "Arn"
        case id = "Id"
        case phoneNumber = "PhoneNumber"
        case phoneNumberCountryCode = "PhoneNumberCountryCode"
        case phoneNumberType = "PhoneNumberType"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let phoneNumber = phoneNumber {
            try encodeContainer.encode(phoneNumber, forKey: .phoneNumber)
        }
        if let phoneNumberCountryCode = phoneNumberCountryCode {
            try encodeContainer.encode(phoneNumberCountryCode.rawValue, forKey: .phoneNumberCountryCode)
        }
        if let phoneNumberType = phoneNumberType {
            try encodeContainer.encode(phoneNumberType.rawValue, forKey: .phoneNumberType)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(String.self, forKey: .id)
        id = idDecoded
        let arnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .arn)
        arn = arnDecoded
        let phoneNumberDecoded = try containerValues.decodeIfPresent(String.self, forKey: .phoneNumber)
        phoneNumber = phoneNumberDecoded
        let phoneNumberTypeDecoded = try containerValues.decodeIfPresent(PhoneNumberType.self, forKey: .phoneNumberType)
        phoneNumberType = phoneNumberTypeDecoded
        let phoneNumberCountryCodeDecoded = try containerValues.decodeIfPresent(PhoneNumberCountryCode.self, forKey: .phoneNumberCountryCode)
        phoneNumberCountryCode = phoneNumberCountryCodeDecoded
    }
}