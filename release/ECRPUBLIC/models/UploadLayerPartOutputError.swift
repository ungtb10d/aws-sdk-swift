// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UploadLayerPartOutputError: Equatable {
    case invalidLayerPartException(InvalidLayerPartException)
    case invalidParameterException(InvalidParameterException)
    case limitExceededException(LimitExceededException)
    case registryNotFoundException(RegistryNotFoundException)
    case repositoryNotFoundException(RepositoryNotFoundException)
    case serverException(ServerException)
    case unsupportedCommandException(UnsupportedCommandException)
    case uploadNotFoundException(UploadNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}