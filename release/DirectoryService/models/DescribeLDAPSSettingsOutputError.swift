// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeLDAPSSettingsOutputError: Equatable {
    case clientException(ClientException)
    case directoryDoesNotExistException(DirectoryDoesNotExistException)
    case invalidNextTokenException(InvalidNextTokenException)
    case invalidParameterException(InvalidParameterException)
    case serviceException(ServiceException)
    case unsupportedOperationException(UnsupportedOperationException)
    case unknown(UnknownAWSHttpServiceError)
}