// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum DeleteDBClusterSnapshotOutputError: Equatable {
    case dBClusterSnapshotNotFoundFault(DBClusterSnapshotNotFoundFault)
    case invalidDBClusterSnapshotStateFault(InvalidDBClusterSnapshotStateFault)
    case unknown(UnknownAWSHttpServiceError)
}