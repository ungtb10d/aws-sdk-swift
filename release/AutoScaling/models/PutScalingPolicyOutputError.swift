// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum PutScalingPolicyOutputError: Equatable {
    case limitExceededFault(LimitExceededFault)
    case resourceContentionFault(ResourceContentionFault)
    case serviceLinkedRoleFailure(ServiceLinkedRoleFailure)
    case unknown(UnknownAWSHttpServiceError)
}