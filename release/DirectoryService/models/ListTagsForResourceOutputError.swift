// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ListTagsForResourceOutputError: Equatable {
    case clientException(ClientException)
    case entityDoesNotExistException(EntityDoesNotExistException)
    case invalidNextTokenException(InvalidNextTokenException)
    case invalidParameterException(InvalidParameterException)
    case serviceException(ServiceException)
    case unknown(UnknownAWSHttpServiceError)
}