// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation

public class S3OutpostsClient {
    let client: SdkHttpClient
    let config: S3OutpostsClientConfiguration
    let serviceName = "S3Outposts"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: S3OutpostsClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public class S3OutpostsClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

        public var region: String
        public var credentialsProvider: AWSCredentialsProvider
        public var signingRegion: String
        public var endpointResolver: EndpointResolver

        public init (
            credentialsProvider: AWSCredentialsProvider,
            endpointResolver: EndpointResolver,
            region: String,
            signingRegion: String
        ) throws
        {
            self.credentialsProvider = credentialsProvider
            self.endpointResolver = endpointResolver
            self.region = region
            self.signingRegion = signingRegion
        }

        public convenience init(credentialsProvider: AWSCredentialsProvider) throws {
            let region = "us-east-1"
            let signingRegion = "us-east-1"
            let endpointResolver = DefaultEndpointResolver()
            try self.init(
                credentialsProvider: credentialsProvider,
                endpointResolver: endpointResolver,
                region: region,
                signingRegion: signingRegion
            )
        }

        public static func `default`() throws -> S3OutpostsClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try S3OutpostsClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

extension S3OutpostsClient: S3OutpostsClientProtocol {
    /// <p>S3 on Outposts access points simplify managing data access at scale for shared datasets
    ///             in Amazon S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform
    ///             actions within your virtual private cloud (VPC). </p>
    ///         <p>This action creates an endpoint and associates it with the specified Outpost. </p>
    ///         <p></p>
    ///         <p>Related actions include:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html">DeleteEndpoint</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html">ListEndpoints</a>
    ///                </p>
    ///             </li>
    ///          </ul>
    public func createEndpoint(input: CreateEndpointInput, completion: @escaping (SdkResult<CreateEndpointOutputResponse, CreateEndpointOutputError>) -> Void)
    {
        let urlPath = "/S3Outposts/CreateEndpoint"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "s3-outposts.\(config.region).amazonaws.com")
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CreateEndpointInput, CreateEndpointOutputResponse, CreateEndpointOutputError>(id: "createEndpoint")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: CreateEndpointInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CreateEndpointInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CreateEndpointInput, CreateEndpointOutputResponse, CreateEndpointOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: CreateEndpointInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>S3 on Outposts access points simplify managing data access at scale for shared datasets
    ///             in Amazon S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform
    ///             actions within your virtual private cloud (VPC). </p>
    ///         <p>This action deletes an endpoint.
    ///             </p>
    ///         <p></p>
    ///         <p>Related actions include:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html">CreateEndpoint</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html">ListEndpoints</a>
    ///                </p>
    ///             </li>
    ///          </ul>
    public func deleteEndpoint(input: DeleteEndpointInput, completion: @escaping (SdkResult<DeleteEndpointOutputResponse, DeleteEndpointOutputError>) -> Void)
    {
        let urlPath = "/S3Outposts/DeleteEndpoint"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteEndpoint")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "s3-outposts.\(config.region).amazonaws.com")
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DeleteEndpointInput, DeleteEndpointOutputResponse, DeleteEndpointOutputError>(id: "deleteEndpoint")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DeleteEndpointInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DeleteEndpointInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DeleteEndpointInput, DeleteEndpointOutputResponse, DeleteEndpointOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>S3 on Outposts access points simplify managing data access at scale for shared datasets
    ///             in Amazon S3 on Outposts. S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform
    ///             actions within your virtual private cloud (VPC). </p>
    ///         <p>This action lists endpoints associated with the Outpost.
    ///             </p>
    ///         <p></p>
    ///         <p>Related actions include:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html">CreateEndpoint</a>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html">DeleteEndpoint</a>
    ///                </p>
    ///             </li>
    ///          </ul>
    public func listEndpoints(input: ListEndpointsInput, completion: @escaping (SdkResult<ListEndpointsOutputResponse, ListEndpointsOutputError>) -> Void)
    {
        let urlPath = "/S3Outposts/ListEndpoints"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listEndpoints")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "s3-outposts.\(config.region).amazonaws.com")
                      .withSigningName(value: "s3-outposts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<ListEndpointsInput, ListEndpointsOutputResponse, ListEndpointsOutputError>(id: "listEndpoints")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: ListEndpointsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ListEndpointsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<ListEndpointsInput, ListEndpointsOutputResponse, ListEndpointsOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}