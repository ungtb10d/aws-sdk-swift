// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct InvokeEndpointInput: Equatable {
    /// <p>The desired MIME type of the inference in the response.</p>
    public let accept: String?
    /// <p>Provides input data, in the format specified in the <code>ContentType</code>
    ///             request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    ///         <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    ///                 Formats-Inference</a>.</p>
    public let body: Data?
    /// <p>The MIME type of the input data in the request body.</p>
    public let contentType: String?
    /// <p>Provides additional information about a request for an inference submitted to a model
    ///             hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    ///             forwarded verbatim. You could use this value, for example, to provide an ID that you can
    ///             use to track a request or to provide other metadata that a service endpoint was
    ///             programmed to process. The value must consist of no more than 1024 visible US-ASCII
    ///             characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    ///                 Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
    ///         <p>The code in your model is responsible for setting or updating any custom attributes in
    ///             the response. If your code does not set this value in the response, an empty value is
    ///             returned. For example, if a custom attribute represents the trace ID, your model can
    ///             prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    ///             function.</p>
    ///
    ///         <p>This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python
    ///             SDK.</p>
    public let customAttributes: String?
    /// <p>The name of the endpoint that you specified when you created the endpoint using the
    ///                 <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API. </p>
    public let endpointName: String?
    /// <p>If you provide a value, it is added to the captured data when you enable data capture
    ///             on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    ///             Data</a>.</p>
    public let inferenceId: String?
    /// <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    ///             this parameter specifies the host name of the container to invoke.</p>
    public let targetContainerHostname: String?
    /// <p>The model to request for inference when invoking a multi-model endpoint.</p>
    public let targetModel: String?
    /// <p>Specify the production variant to send the inference request to when invoking an
    ///             endpoint that is running two or more variants. Note that this parameter overrides the
    ///             default behavior for the endpoint, which is to distribute the invocation traffic based
    ///             on the variant weights.</p>
    ///         <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    ///                 production</a>
    ///          </p>
    public let targetVariant: String?

    public init (
        accept: String? = nil,
        body: Data? = nil,
        contentType: String? = nil,
        customAttributes: String? = nil,
        endpointName: String? = nil,
        inferenceId: String? = nil,
        targetContainerHostname: String? = nil,
        targetModel: String? = nil,
        targetVariant: String? = nil
    )
    {
        self.accept = accept
        self.body = body
        self.contentType = contentType
        self.customAttributes = customAttributes
        self.endpointName = endpointName
        self.inferenceId = inferenceId
        self.targetContainerHostname = targetContainerHostname
        self.targetModel = targetModel
        self.targetVariant = targetVariant
    }
}

extension InvokeEndpointInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvokeEndpointInput(accept: \(String(describing: accept)), body: \(String(describing: body)), contentType: \(String(describing: contentType)), customAttributes: \(String(describing: customAttributes)), endpointName: \(String(describing: endpointName)), inferenceId: \(String(describing: inferenceId)), targetContainerHostname: \(String(describing: targetContainerHostname)), targetModel: \(String(describing: targetModel)), targetVariant: \(String(describing: targetVariant)))"}
}