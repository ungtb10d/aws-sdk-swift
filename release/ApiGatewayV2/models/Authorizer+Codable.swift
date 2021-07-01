// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Authorizer: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case authorizerCredentialsArn = "authorizerCredentialsArn"
        case authorizerId = "authorizerId"
        case authorizerPayloadFormatVersion = "authorizerPayloadFormatVersion"
        case authorizerResultTtlInSeconds = "authorizerResultTtlInSeconds"
        case authorizerType = "authorizerType"
        case authorizerUri = "authorizerUri"
        case enableSimpleResponses = "enableSimpleResponses"
        case identitySource = "identitySource"
        case identityValidationExpression = "identityValidationExpression"
        case jwtConfiguration = "jwtConfiguration"
        case name = "name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let authorizerCredentialsArn = authorizerCredentialsArn {
            try encodeContainer.encode(authorizerCredentialsArn, forKey: .authorizerCredentialsArn)
        }
        if let authorizerId = authorizerId {
            try encodeContainer.encode(authorizerId, forKey: .authorizerId)
        }
        if let authorizerPayloadFormatVersion = authorizerPayloadFormatVersion {
            try encodeContainer.encode(authorizerPayloadFormatVersion, forKey: .authorizerPayloadFormatVersion)
        }
        if authorizerResultTtlInSeconds != 0 {
            try encodeContainer.encode(authorizerResultTtlInSeconds, forKey: .authorizerResultTtlInSeconds)
        }
        if let authorizerType = authorizerType {
            try encodeContainer.encode(authorizerType.rawValue, forKey: .authorizerType)
        }
        if let authorizerUri = authorizerUri {
            try encodeContainer.encode(authorizerUri, forKey: .authorizerUri)
        }
        if enableSimpleResponses != false {
            try encodeContainer.encode(enableSimpleResponses, forKey: .enableSimpleResponses)
        }
        if let identitySource = identitySource {
            var identitySourceContainer = encodeContainer.nestedUnkeyedContainer(forKey: .identitySource)
            for identitysourcelist0 in identitySource {
                try identitySourceContainer.encode(identitysourcelist0)
            }
        }
        if let identityValidationExpression = identityValidationExpression {
            try encodeContainer.encode(identityValidationExpression, forKey: .identityValidationExpression)
        }
        if let jwtConfiguration = jwtConfiguration {
            try encodeContainer.encode(jwtConfiguration, forKey: .jwtConfiguration)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let authorizerCredentialsArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizerCredentialsArn)
        authorizerCredentialsArn = authorizerCredentialsArnDecoded
        let authorizerIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizerId)
        authorizerId = authorizerIdDecoded
        let authorizerPayloadFormatVersionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizerPayloadFormatVersion)
        authorizerPayloadFormatVersion = authorizerPayloadFormatVersionDecoded
        let authorizerResultTtlInSecondsDecoded = try containerValues.decode(Int.self, forKey: .authorizerResultTtlInSeconds)
        authorizerResultTtlInSeconds = authorizerResultTtlInSecondsDecoded
        let authorizerTypeDecoded = try containerValues.decodeIfPresent(AuthorizerType.self, forKey: .authorizerType)
        authorizerType = authorizerTypeDecoded
        let authorizerUriDecoded = try containerValues.decodeIfPresent(String.self, forKey: .authorizerUri)
        authorizerUri = authorizerUriDecoded
        let enableSimpleResponsesDecoded = try containerValues.decode(Bool.self, forKey: .enableSimpleResponses)
        enableSimpleResponses = enableSimpleResponsesDecoded
        let identitySourceContainer = try containerValues.decodeIfPresent([String?].self, forKey: .identitySource)
        var identitySourceDecoded0:[String]? = nil
        if let identitySourceContainer = identitySourceContainer {
            identitySourceDecoded0 = [String]()
            for string0 in identitySourceContainer {
                if let string0 = string0 {
                    identitySourceDecoded0?.append(string0)
                }
            }
        }
        identitySource = identitySourceDecoded0
        let identityValidationExpressionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .identityValidationExpression)
        identityValidationExpression = identityValidationExpressionDecoded
        let jwtConfigurationDecoded = try containerValues.decodeIfPresent(JWTConfiguration.self, forKey: .jwtConfiguration)
        jwtConfiguration = jwtConfigurationDecoded
        let nameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .name)
        name = nameDecoded
    }
}