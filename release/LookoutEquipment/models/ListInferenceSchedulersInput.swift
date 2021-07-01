// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListInferenceSchedulersInput: Equatable {
    /// <p>The beginning of the name of the inference schedulers to be listed. </p>
    public let inferenceSchedulerNameBeginsWith: String?
    /// <p> Specifies the maximum number of inference schedulers to list. </p>
    public let maxResults: Int?
    /// <p>The name of the ML model used by the inference scheduler to be listed. </p>
    public let modelName: String?
    /// <p> An opaque pagination token indicating where to continue the listing of inference
    ///          schedulers. </p>
    public let nextToken: String?

    public init (
        inferenceSchedulerNameBeginsWith: String? = nil,
        maxResults: Int? = nil,
        modelName: String? = nil,
        nextToken: String? = nil
    )
    {
        self.inferenceSchedulerNameBeginsWith = inferenceSchedulerNameBeginsWith
        self.maxResults = maxResults
        self.modelName = modelName
        self.nextToken = nextToken
    }
}

extension ListInferenceSchedulersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListInferenceSchedulersInput(inferenceSchedulerNameBeginsWith: \(String(describing: inferenceSchedulerNameBeginsWith)), maxResults: \(String(describing: maxResults)), modelName: \(String(describing: modelName)), nextToken: \(String(describing: nextToken)))"}
}