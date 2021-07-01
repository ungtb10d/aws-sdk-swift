// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListTargetsForPolicyOutputError: Equatable {
    case accessDeniedException(AccessDeniedException)
    case aWSOrganizationsNotInUseException(AWSOrganizationsNotInUseException)
    case invalidInputException(InvalidInputException)
    case policyNotFoundException(PolicyNotFoundException)
    case serviceException(ServiceException)
    case tooManyRequestsException(TooManyRequestsException)
    case unsupportedAPIEndpointException(UnsupportedAPIEndpointException)
    case unknown(UnknownAWSHttpServiceError)
}