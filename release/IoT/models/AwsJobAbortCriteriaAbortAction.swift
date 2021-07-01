// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum AwsJobAbortCriteriaAbortAction {
    case cancel
    case sdkUnknown(String)
}

extension AwsJobAbortCriteriaAbortAction : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [AwsJobAbortCriteriaAbortAction] {
        return [
            .cancel,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .cancel: return "CANCEL"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = AwsJobAbortCriteriaAbortAction(rawValue: rawValue) ?? AwsJobAbortCriteriaAbortAction.sdkUnknown(rawValue)
    }
}