// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DescribeClustersOutputError: Equatable {
    case clusterNotFoundFault(ClusterNotFoundFault)
    case invalidTagFault(InvalidTagFault)
    case unknown(UnknownAWSHttpServiceError)
}