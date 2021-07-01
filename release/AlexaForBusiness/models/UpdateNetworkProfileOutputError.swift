// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum UpdateNetworkProfileOutputError: Equatable {
    case concurrentModificationException(ConcurrentModificationException)
    case invalidCertificateAuthorityException(InvalidCertificateAuthorityException)
    case invalidSecretsManagerResourceException(InvalidSecretsManagerResourceException)
    case nameInUseException(NameInUseException)
    case notFoundException(NotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}