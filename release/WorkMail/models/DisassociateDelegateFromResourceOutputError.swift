// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DisassociateDelegateFromResourceOutputError: Equatable {
    case entityNotFoundException(EntityNotFoundException)
    case entityStateException(EntityStateException)
    case invalidParameterException(InvalidParameterException)
    case organizationNotFoundException(OrganizationNotFoundException)
    case organizationStateException(OrganizationStateException)
    case unknown(UnknownAWSHttpServiceError)
}