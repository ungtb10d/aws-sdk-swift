// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteRepositoryOutputError: Equatable {
    case invalidParameterException(InvalidParameterException)
    case repositoryNotEmptyException(RepositoryNotEmptyException)
    case repositoryNotFoundException(RepositoryNotFoundException)
    case serverException(ServerException)
    case unknown(UnknownAWSHttpServiceError)
}