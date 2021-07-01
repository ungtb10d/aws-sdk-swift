// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum ModifyClusterSnapshotScheduleOutputError: Equatable {
    case clusterNotFoundFault(ClusterNotFoundFault)
    case invalidClusterSnapshotScheduleStateFault(InvalidClusterSnapshotScheduleStateFault)
    case snapshotScheduleNotFoundFault(SnapshotScheduleNotFoundFault)
    case unknown(UnknownAWSHttpServiceError)
}