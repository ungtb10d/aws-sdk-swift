// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AcceptDomainTransferFromAnotherAwsAccountOutputError: Equatable {
    case domainLimitExceeded(DomainLimitExceeded)
    case invalidInput(InvalidInput)
    case operationLimitExceeded(OperationLimitExceeded)
    case unknown(UnknownAWSHttpServiceError)
}