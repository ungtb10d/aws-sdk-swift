// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class DlmClient {
    public static let clientName = "DlmClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "DLM"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String? = nil) throws {
        let config = try DlmClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class DlmClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.regionResolver = regionResolver ?? DefaultRegionResolver()
            let defaultRegion = self.regionResolver.resolveRegion()
            self.region = region ?? defaultRegion
            self.signingRegion = signingRegion ?? defaultRegion
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("DlmClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct DlmClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "DlmClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension DlmClient: DlmClientProtocol {
    /// Creates a policy to manage the lifecycle of the specified Amazon Web Services resources. You can create up to 100 lifecycle policies.
    public func createLifecyclePolicy(input: CreateLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<CreateLifecyclePolicyOutputResponse, CreateLifecyclePolicyOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createLifecyclePolicy")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<CreateLifecyclePolicyInput, CreateLifecyclePolicyOutputResponse, CreateLifecyclePolicyOutputError>(id: "createLifecyclePolicy")
        operation.initializeStep.intercept(position: .after, middleware: CreateLifecyclePolicyInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: CreateLifecyclePolicyInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: CreateLifecyclePolicyInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: CreateLifecyclePolicyInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateLifecyclePolicyInput, CreateLifecyclePolicyOutputResponse, CreateLifecyclePolicyOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: CreateLifecyclePolicyInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Deletes the specified lifecycle policy and halts the automated operations that the policy specified.
    public func deleteLifecyclePolicy(input: DeleteLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLifecyclePolicyOutputResponse, DeleteLifecyclePolicyOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteLifecyclePolicy")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteLifecyclePolicyInput, DeleteLifecyclePolicyOutputResponse, DeleteLifecyclePolicyOutputError>(id: "deleteLifecyclePolicy")
        operation.initializeStep.intercept(position: .after, middleware: DeleteLifecyclePolicyInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: DeleteLifecyclePolicyInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: DeleteLifecyclePolicyInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DeleteLifecyclePolicyInputQueryItemMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use [GetLifecyclePolicy].
    public func getLifecyclePolicies(input: GetLifecyclePoliciesInput, completion: @escaping (ClientRuntime.SdkResult<GetLifecyclePoliciesOutputResponse, GetLifecyclePoliciesOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getLifecyclePolicies")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetLifecyclePoliciesInput, GetLifecyclePoliciesOutputResponse, GetLifecyclePoliciesOutputError>(id: "getLifecyclePolicies")
        operation.initializeStep.intercept(position: .after, middleware: GetLifecyclePoliciesInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: GetLifecyclePoliciesInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: GetLifecyclePoliciesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetLifecyclePoliciesInputQueryItemMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Gets detailed information about the specified lifecycle policy.
    public func getLifecyclePolicy(input: GetLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetLifecyclePolicyOutputResponse, GetLifecyclePolicyOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getLifecyclePolicy")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetLifecyclePolicyInput, GetLifecyclePolicyOutputResponse, GetLifecyclePolicyOutputError>(id: "getLifecyclePolicy")
        operation.initializeStep.intercept(position: .after, middleware: GetLifecyclePolicyInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: GetLifecyclePolicyInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: GetLifecyclePolicyInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetLifecyclePolicyInputQueryItemMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Lists the tags for the specified resource.
    public func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listTagsForResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListTagsForResourceInput, ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(id: "listTagsForResource")
        operation.initializeStep.intercept(position: .after, middleware: ListTagsForResourceInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: ListTagsForResourceInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ListTagsForResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ListTagsForResourceInputQueryItemMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Adds the specified tags to the specified resource.
    public func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "tagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>(id: "tagResource")
        operation.initializeStep.intercept(position: .after, middleware: TagResourceInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: TagResourceInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: TagResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: TagResourceInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: TagResourceInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Removes the specified tags from the specified resource.
    public func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "untagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UntagResourceInput, UntagResourceOutputResponse, UntagResourceOutputError>(id: "untagResource")
        operation.initializeStep.intercept(position: .after, middleware: UntagResourceInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: UntagResourceInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: UntagResourceInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: UntagResourceInputQueryItemMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Updates the specified lifecycle policy.
    public func updateLifecyclePolicy(input: UpdateLifecyclePolicyInput, completion: @escaping (ClientRuntime.SdkResult<UpdateLifecyclePolicyOutputResponse, UpdateLifecyclePolicyOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .patch)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateLifecyclePolicy")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "dlm")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateLifecyclePolicyInput, UpdateLifecyclePolicyOutputResponse, UpdateLifecyclePolicyOutputError>(id: "updateLifecyclePolicy")
        operation.initializeStep.intercept(position: .after, middleware: UpdateLifecyclePolicyInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: UpdateLifecyclePolicyInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: UpdateLifecyclePolicyInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: UpdateLifecyclePolicyInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateLifecyclePolicyInput, UpdateLifecyclePolicyOutputResponse, UpdateLifecyclePolicyOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: UpdateLifecyclePolicyInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
