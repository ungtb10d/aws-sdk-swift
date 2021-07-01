// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeProjectVersionsInput: Equatable {
    /// <p>The maximum number of results to return per paginated call.
    ///           The largest value you can specify is 100. If you specify a value greater than 100, a ValidationException
    ///           error occurs. The default value is 100. </p>
    public let maxResults: Int?
    /// <p>If the previous response was incomplete (because there is more
    ///            results to retrieve), Amazon Rekognition Custom Labels returns a pagination token in the response.
    ///            You can use this pagination token to retrieve the next set of results. </p>
    public let nextToken: String?
    /// <p>The Amazon Resource Name (ARN) of the project that contains the models you want to describe.</p>
    public let projectArn: String?
    /// <p>A list of model version names that you want to describe. You can add up to 10 model version names
    ///          to the list. If you don't specify a value, all model descriptions are returned.  A version name is part of a
    ///          model (ProjectVersion) ARN. For example, <code>my-model.2020-01-21T09.10.15</code> is the version name in the following ARN.
    ///                <code>arn:aws:rekognition:us-east-1:123456789012:project/getting-started/version/<i>my-model.2020-01-21T09.10.15</i>/1234567890123</code>.</p>
    public let versionNames: [String]?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        projectArn: String? = nil,
        versionNames: [String]? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.projectArn = projectArn
        self.versionNames = versionNames
    }
}

extension DescribeProjectVersionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeProjectVersionsInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), projectArn: \(String(describing: projectArn)), versionNames: \(String(describing: versionNames)))"}
}