// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListWorldTemplatesOutputError: Equatable {
    case internalServerException(InternalServerException)
    case invalidParameterException(InvalidParameterException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}