// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation

public class SageMakerFeatureStoreRuntimeClient {
    let client: SdkHttpClient
    let config: SageMakerFeatureStoreRuntimeClientConfiguration
    let serviceName = "SageMaker FeatureStore Runtime"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: SageMakerFeatureStoreRuntimeClientConfiguration) {
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

    public class SageMakerFeatureStoreRuntimeClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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

        public static func `default`() throws -> SageMakerFeatureStoreRuntimeClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try SageMakerFeatureStoreRuntimeClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

extension SageMakerFeatureStoreRuntimeClient: SageMakerFeatureStoreRuntimeClientProtocol {
    /// <p>Deletes a <code>Record</code> from a <code>FeatureGroup</code>. A new record will show
    ///          up in the <code>OfflineStore</code> when the <code>DeleteRecord</code> API is called. This
    ///          record will have a value of <code>True</code> in the <code>is_deleted</code> column.</p>
    public func deleteRecord(input: DeleteRecordInput, completion: @escaping (SdkResult<DeleteRecordOutputResponse, DeleteRecordOutputError>) -> Void)
    {
        guard let featureGroupName = input.featureGroupName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component featureGroupName unexpectedly nil"))))
            return
        }
        let urlPath = "/FeatureGroup/\(featureGroupName)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteRecord")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "featurestore-runtime.sagemaker.\(config.region).amazonaws.com")
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DeleteRecordInput, DeleteRecordOutputResponse, DeleteRecordOutputError>(id: "deleteRecord")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DeleteRecordInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DeleteRecordInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DeleteRecordInput, DeleteRecordOutputResponse, DeleteRecordOutputError>(contentType: "application/json"))
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

    /// <p>Use for <code>OnlineStore</code> serving from a <code>FeatureStore</code>. Only the
    ///          latest records stored in the <code>OnlineStore</code> can be retrieved. If no Record with
    ///             <code>RecordIdentifierValue</code> is found, then an empty result is returned. </p>
    public func getRecord(input: GetRecordInput, completion: @escaping (SdkResult<GetRecordOutputResponse, GetRecordOutputError>) -> Void)
    {
        guard let featureGroupName = input.featureGroupName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component featureGroupName unexpectedly nil"))))
            return
        }
        let urlPath = "/FeatureGroup/\(featureGroupName)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRecord")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "featurestore-runtime.sagemaker.\(config.region).amazonaws.com")
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetRecordInput, GetRecordOutputResponse, GetRecordOutputError>(id: "getRecord")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetRecordInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetRecordInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetRecordInput, GetRecordOutputResponse, GetRecordOutputError>(contentType: "application/json"))
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

    /// <p>Used for data ingestion into the <code>FeatureStore</code>. The <code>PutRecord</code>
    ///          API writes to both the <code>OnlineStore</code> and <code>OfflineStore</code>. If the
    ///          record is the latest record for the <code>recordIdentifier</code>, the record is written to
    ///          both the <code>OnlineStore</code> and <code>OfflineStore</code>. If the record is a
    ///          historic record, it is written only to the <code>OfflineStore</code>.</p>
    public func putRecord(input: PutRecordInput, completion: @escaping (SdkResult<PutRecordOutputResponse, PutRecordOutputError>) -> Void)
    {
        guard let featureGroupName = input.featureGroupName else {
            completion(.failure(.client(ClientError.serializationFailed("uri component featureGroupName unexpectedly nil"))))
            return
        }
        let urlPath = "/FeatureGroup/\(featureGroupName)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putRecord")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "featurestore-runtime.sagemaker.\(config.region).amazonaws.com")
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<PutRecordInput, PutRecordOutputResponse, PutRecordOutputError>(id: "putRecord")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: PutRecordInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: PutRecordInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<PutRecordInput, PutRecordOutputResponse, PutRecordOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: PutRecordInputBodyMiddleware())
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