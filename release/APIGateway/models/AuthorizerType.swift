// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The authorizer type. Valid values are <code>TOKEN</code> for a Lambda function using a single authorization token submitted in a custom header, <code>REQUEST</code> for a Lambda function using incoming request parameters, and <code>COGNITO_USER_POOLS</code> for using an Amazon Cognito user pool.</p>
public enum AuthorizerType {
    case cognitoUserPools
    case request
    case token
    case sdkUnknown(String)
}

extension AuthorizerType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AuthorizerType] {
        return [
            .cognitoUserPools,
            .request,
            .token,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .cognitoUserPools: return "COGNITO_USER_POOLS"
        case .request: return "REQUEST"
        case .token: return "TOKEN"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AuthorizerType(rawValue: rawValue) ?? AuthorizerType.sdkUnknown(rawValue)
    }
}