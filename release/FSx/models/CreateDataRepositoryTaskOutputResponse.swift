// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDataRepositoryTaskOutputResponse: Equatable {
    /// <p>The description of the data repository task that you just created.</p>
    public let dataRepositoryTask: DataRepositoryTask?

    public init (
        dataRepositoryTask: DataRepositoryTask? = nil
    )
    {
        self.dataRepositoryTask = dataRepositoryTask
    }
}

extension CreateDataRepositoryTaskOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDataRepositoryTaskOutputResponse(dataRepositoryTask: \(String(describing: dataRepositoryTask)))"}
}