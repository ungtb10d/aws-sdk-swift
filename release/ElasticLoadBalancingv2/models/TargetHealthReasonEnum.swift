// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum TargetHealthReasonEnum {
    case deregistrationInProgress
    case failedHealthChecks
    case healthCheckDisabled
    case initialHealthChecking
    case internalError
    case invalidState
    case ipUnusable
    case notInUse
    case notRegistered
    case registrationInProgress
    case responseCodeMismatch
    case timeout
    case sdkUnknown(String)
}

extension TargetHealthReasonEnum : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [TargetHealthReasonEnum] {
        return [
            .deregistrationInProgress,
            .failedHealthChecks,
            .healthCheckDisabled,
            .initialHealthChecking,
            .internalError,
            .invalidState,
            .ipUnusable,
            .notInUse,
            .notRegistered,
            .registrationInProgress,
            .responseCodeMismatch,
            .timeout,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .deregistrationInProgress: return "Target.DeregistrationInProgress"
        case .failedHealthChecks: return "Target.FailedHealthChecks"
        case .healthCheckDisabled: return "Target.HealthCheckDisabled"
        case .initialHealthChecking: return "Elb.InitialHealthChecking"
        case .internalError: return "Elb.InternalError"
        case .invalidState: return "Target.InvalidState"
        case .ipUnusable: return "Target.IpUnusable"
        case .notInUse: return "Target.NotInUse"
        case .notRegistered: return "Target.NotRegistered"
        case .registrationInProgress: return "Elb.RegistrationInProgress"
        case .responseCodeMismatch: return "Target.ResponseCodeMismatch"
        case .timeout: return "Target.Timeout"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = TargetHealthReasonEnum(rawValue: rawValue) ?? TargetHealthReasonEnum.sdkUnknown(rawValue)
    }
}