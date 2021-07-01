// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Credentials: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case accessToken = "AccessToken"
        case accessTokenExpiration = "AccessTokenExpiration"
        case refreshToken = "RefreshToken"
        case refreshTokenExpiration = "RefreshTokenExpiration"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessToken = accessToken {
            try encodeContainer.encode(accessToken, forKey: .accessToken)
        }
        if let accessTokenExpiration = accessTokenExpiration {
            try encodeContainer.encode(accessTokenExpiration.timeIntervalSince1970, forKey: .accessTokenExpiration)
        }
        if let refreshToken = refreshToken {
            try encodeContainer.encode(refreshToken, forKey: .refreshToken)
        }
        if let refreshTokenExpiration = refreshTokenExpiration {
            try encodeContainer.encode(refreshTokenExpiration.timeIntervalSince1970, forKey: .refreshTokenExpiration)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let accessTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .accessToken)
        accessToken = accessTokenDecoded
        let accessTokenExpirationDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .accessTokenExpiration)
        accessTokenExpiration = accessTokenExpirationDecoded
        let refreshTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .refreshToken)
        refreshToken = refreshTokenDecoded
        let refreshTokenExpirationDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .refreshTokenExpiration)
        refreshTokenExpiration = refreshTokenExpirationDecoded
    }
}