// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TargetType {
    case containerInstance
    case sdkUnknown(String)
}

extension TargetType : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TargetType] {
        return [
            .containerInstance,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .containerInstance: return "container-instance"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TargetType(rawValue: rawValue) ?? TargetType.sdkUnknown(rawValue)
    }
}