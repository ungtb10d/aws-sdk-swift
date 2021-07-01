// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CacheSettings: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case allowedHTTPMethods
        case cachedHTTPMethods
        case defaultTTL
        case forwardedCookies
        case forwardedHeaders
        case forwardedQueryStrings
        case maximumTTL
        case minimumTTL
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let allowedHTTPMethods = allowedHTTPMethods {
            try encodeContainer.encode(allowedHTTPMethods, forKey: .allowedHTTPMethods)
        }
        if let cachedHTTPMethods = cachedHTTPMethods {
            try encodeContainer.encode(cachedHTTPMethods, forKey: .cachedHTTPMethods)
        }
        if let defaultTTL = defaultTTL {
            try encodeContainer.encode(defaultTTL, forKey: .defaultTTL)
        }
        if let forwardedCookies = forwardedCookies {
            try encodeContainer.encode(forwardedCookies, forKey: .forwardedCookies)
        }
        if let forwardedHeaders = forwardedHeaders {
            try encodeContainer.encode(forwardedHeaders, forKey: .forwardedHeaders)
        }
        if let forwardedQueryStrings = forwardedQueryStrings {
            try encodeContainer.encode(forwardedQueryStrings, forKey: .forwardedQueryStrings)
        }
        if let maximumTTL = maximumTTL {
            try encodeContainer.encode(maximumTTL, forKey: .maximumTTL)
        }
        if let minimumTTL = minimumTTL {
            try encodeContainer.encode(minimumTTL, forKey: .minimumTTL)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let defaultTTLDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .defaultTTL)
        defaultTTL = defaultTTLDecoded
        let minimumTTLDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .minimumTTL)
        minimumTTL = minimumTTLDecoded
        let maximumTTLDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maximumTTL)
        maximumTTL = maximumTTLDecoded
        let allowedHTTPMethodsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .allowedHTTPMethods)
        allowedHTTPMethods = allowedHTTPMethodsDecoded
        let cachedHTTPMethodsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .cachedHTTPMethods)
        cachedHTTPMethods = cachedHTTPMethodsDecoded
        let forwardedCookiesDecoded = try containerValues.decodeIfPresent(CookieObject.self, forKey: .forwardedCookies)
        forwardedCookies = forwardedCookiesDecoded
        let forwardedHeadersDecoded = try containerValues.decodeIfPresent(HeaderObject.self, forKey: .forwardedHeaders)
        forwardedHeaders = forwardedHeadersDecoded
        let forwardedQueryStringsDecoded = try containerValues.decodeIfPresent(QueryStringObject.self, forKey: .forwardedQueryStrings)
        forwardedQueryStrings = forwardedQueryStringsDecoded
    }
}