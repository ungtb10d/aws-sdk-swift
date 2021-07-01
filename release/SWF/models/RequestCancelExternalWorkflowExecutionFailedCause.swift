// Code generated by smithy-swift-codegen. DO NOT EDIT!



public enum RequestCancelExternalWorkflowExecutionFailedCause {
    case operationNotPermitted
    case requestCancelExternalWorkflowExecutionRateExceeded
    case unknownExternalWorkflowExecution
    case sdkUnknown(String)
}

extension RequestCancelExternalWorkflowExecutionFailedCause : Equatable, RawRepresentable, Codable, CaseIterable, Hashable {
    public static var allCases: [RequestCancelExternalWorkflowExecutionFailedCause] {
        return [
            .operationNotPermitted,
            .requestCancelExternalWorkflowExecutionRateExceeded,
            .unknownExternalWorkflowExecution,
            .sdkUnknown("")
        ]
    }
    public init?(rawValue: String) {
        let value = Self.allCases.first(where: { $0.rawValue == rawValue })
        self = value ?? Self.sdkUnknown(rawValue)
    }
    public var rawValue: String {
        switch self {
        case .operationNotPermitted: return "OPERATION_NOT_PERMITTED"
        case .requestCancelExternalWorkflowExecutionRateExceeded: return "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"
        case .unknownExternalWorkflowExecution: return "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"
        case let .sdkUnknown(s): return s
        }
    }
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(RawValue.self)
        self = RequestCancelExternalWorkflowExecutionFailedCause(rawValue: rawValue) ?? RequestCancelExternalWorkflowExecutionFailedCause.sdkUnknown(rawValue)
    }
}