// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum PatchAction {
    case allowasdependency
    case block
    case sdkUnknown(String)
}

extension PatchAction : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [PatchAction] {
        return [
            .allowasdependency,
            .block,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .allowasdependency: return "ALLOW_AS_DEPENDENCY"
        case .block: return "BLOCK"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = PatchAction(rawValue: rawValue) ?? PatchAction.sdkUnknown(rawValue)
    }
}