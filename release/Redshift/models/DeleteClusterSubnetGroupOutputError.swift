// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteClusterSubnetGroupOutputError: Equatable {
    case clusterSubnetGroupNotFoundFault(ClusterSubnetGroupNotFoundFault)
    case invalidClusterSubnetGroupStateFault(InvalidClusterSubnetGroupStateFault)
    case invalidClusterSubnetStateFault(InvalidClusterSubnetStateFault)
    case unknown(UnknownAWSHttpServiceError)
}