// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartDocumentAnalysisInput: Equatable {
    /// <p>The idempotent token that you use to identify the start request. If you use the same
    ///          token with multiple <code>StartDocumentAnalysis</code> requests, the same
    ///             <code>JobId</code> is returned. Use <code>ClientRequestToken</code> to prevent the same
    ///          job from being accidentally started more than once. For more information, see
    ///          <a href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling Amazon Textract Asynchronous Operations</a>.</p>
    public let clientRequestToken: String?
    /// <p>The location of the document to be processed.</p>
    public let documentLocation: DocumentLocation?
    /// <p>A list of the types of analysis to perform. Add TABLES to the list to return information
    ///          about the tables that are detected in the input document. Add FORMS to return detected
    ///          form data. To perform both types of analysis, add TABLES
    ///          and FORMS to <code>FeatureTypes</code>. All lines and words detected in the document are
    ///          included in the response (including text that isn't related to the value of
    ///             <code>FeatureTypes</code>). </p>
    public let featureTypes: [FeatureType]?
    /// <p>An identifier that you specify that's included in the completion notification published
    ///          to the Amazon SNS topic. For example, you can use <code>JobTag</code> to identify the type of
    ///          document that the completion notification corresponds to (such as a tax form or a
    ///          receipt).</p>
    public let jobTag: String?
    /// <p>The KMS key used to encrypt the inference results. This can be
    ///          in either Key ID or Key Alias format. When a KMS key is provided, the
    ///          KMS key will be used for server-side encryption of the objects in the
    ///          customer bucket. When this parameter is not enabled, the result will
    ///          be encrypted server side,using SSE-S3.</p>
    public let kMSKeyId: String?
    /// <p>The Amazon SNS topic ARN that you want Amazon Textract to publish the completion status of the
    ///          operation to. </p>
    public let notificationChannel: NotificationChannel?
    /// <p>Sets if the output will go to a customer defined bucket. By default, Amazon Textract will save
    ///          the results internally to be accessed by the GetDocumentAnalysis operation.</p>
    public let outputConfig: OutputConfig?

    public init (
        clientRequestToken: String? = nil,
        documentLocation: DocumentLocation? = nil,
        featureTypes: [FeatureType]? = nil,
        jobTag: String? = nil,
        kMSKeyId: String? = nil,
        notificationChannel: NotificationChannel? = nil,
        outputConfig: OutputConfig? = nil
    )
    {
        self.clientRequestToken = clientRequestToken
        self.documentLocation = documentLocation
        self.featureTypes = featureTypes
        self.jobTag = jobTag
        self.kMSKeyId = kMSKeyId
        self.notificationChannel = notificationChannel
        self.outputConfig = outputConfig
    }
}

extension StartDocumentAnalysisInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartDocumentAnalysisInput(clientRequestToken: \(String(describing: clientRequestToken)), documentLocation: \(String(describing: documentLocation)), featureTypes: \(String(describing: featureTypes)), jobTag: \(String(describing: jobTag)), kMSKeyId: \(String(describing: kMSKeyId)), notificationChannel: \(String(describing: notificationChannel)), outputConfig: \(String(describing: outputConfig)))"}
}