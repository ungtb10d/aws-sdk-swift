// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ValidateConfigurationSettingsOutputError: Equatable {
    case insufficientPrivilegesException(InsufficientPrivilegesException)
    case tooManyBucketsException(TooManyBucketsException)
    case unknown(UnknownAWSHttpServiceError)
}