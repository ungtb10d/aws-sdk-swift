// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkflowExecutionCancelRequestedEventAttributes: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case cause
        case externalInitiatedEventId
        case externalWorkflowExecution
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let cause = cause {
            try encodeContainer.encode(cause.rawValue, forKey: .cause)
        }
        if externalInitiatedEventId != 0 {
            try encodeContainer.encode(externalInitiatedEventId, forKey: .externalInitiatedEventId)
        }
        if let externalWorkflowExecution = externalWorkflowExecution {
            try encodeContainer.encode(externalWorkflowExecution, forKey: .externalWorkflowExecution)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let externalWorkflowExecutionDecoded = try containerValues.decodeIfPresent(WorkflowExecution.self, forKey: .externalWorkflowExecution)
        externalWorkflowExecution = externalWorkflowExecutionDecoded
        let externalInitiatedEventIdDecoded = try containerValues.decode(Int.self, forKey: .externalInitiatedEventId)
        externalInitiatedEventId = externalInitiatedEventIdDecoded
        let causeDecoded = try containerValues.decodeIfPresent(WorkflowExecutionCancelRequestedCause.self, forKey: .cause)
        cause = causeDecoded
    }
}