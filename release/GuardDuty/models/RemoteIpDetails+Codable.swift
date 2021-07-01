// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RemoteIpDetails: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case city = "city"
        case country = "country"
        case geoLocation = "geoLocation"
        case ipAddressV4 = "ipAddressV4"
        case organization = "organization"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let city = city {
            try encodeContainer.encode(city, forKey: .city)
        }
        if let country = country {
            try encodeContainer.encode(country, forKey: .country)
        }
        if let geoLocation = geoLocation {
            try encodeContainer.encode(geoLocation, forKey: .geoLocation)
        }
        if let ipAddressV4 = ipAddressV4 {
            try encodeContainer.encode(ipAddressV4, forKey: .ipAddressV4)
        }
        if let organization = organization {
            try encodeContainer.encode(organization, forKey: .organization)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let cityDecoded = try containerValues.decodeIfPresent(City.self, forKey: .city)
        city = cityDecoded
        let countryDecoded = try containerValues.decodeIfPresent(Country.self, forKey: .country)
        country = countryDecoded
        let geoLocationDecoded = try containerValues.decodeIfPresent(GeoLocation.self, forKey: .geoLocation)
        geoLocation = geoLocationDecoded
        let ipAddressV4Decoded = try containerValues.decodeIfPresent(String.self, forKey: .ipAddressV4)
        ipAddressV4 = ipAddressV4Decoded
        let organizationDecoded = try containerValues.decodeIfPresent(Organization.self, forKey: .organization)
        organization = organizationDecoded
    }
}