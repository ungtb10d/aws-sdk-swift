// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceMeteringClient {
    public static let clientName = "MarketplaceMeteringClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Marketplace Metering"
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
        let config = try MarketplaceMeteringClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class MarketplaceMeteringClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
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
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MarketplaceMeteringClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct MarketplaceMeteringClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MarketplaceMeteringClient"
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

extension MarketplaceMeteringClient: MarketplaceMeteringClientProtocol {
    /// BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers. For identical requests, the API is idempotent; requests can be retried with the same records or a subset of the input records. Every request to BatchMeterUsage is for one product. If you need to meter usage for multiple products, you must make multiple calls to BatchMeterUsage. BatchMeterUsage can process up to 25 UsageRecords at a time. A UsageRecord can optionally include multiple usage allocations, to provide customers with usagedata split into buckets by tags that you define (or allow the customer to define). BatchMeterUsage requests must be less than 1MB in size.
    public func batchMeterUsage(input: BatchMeterUsageInput, completion: @escaping (ClientRuntime.SdkResult<BatchMeterUsageOutputResponse, BatchMeterUsageOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "batchMeterUsage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<BatchMeterUsageInput, BatchMeterUsageOutputResponse, BatchMeterUsageOutputError>(id: "batchMeterUsage")
        operation.initializeStep.intercept(position: .after, middleware: BatchMeterUsageInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: BatchMeterUsageInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: BatchMeterUsageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: BatchMeterUsageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: BatchMeterUsageInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<BatchMeterUsageInput, BatchMeterUsageOutputResponse, BatchMeterUsageOutputError>(xAmzTarget: "AWSMPMeteringService.BatchMeterUsage"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<BatchMeterUsageInput, BatchMeterUsageOutputResponse, BatchMeterUsageOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// API to emit metering records. For identical requests, the API is idempotent. It simply returns the metering record ID. MeterUsage is authenticated on the buyer's AWS account using credentials from the EC2 instance, ECS task, or EKS pod. MeterUsage can optionally include multiple usage allocations, to provide customers with usage data split into buckets by tags that you define (or allow the customer to define).
    public func meterUsage(input: MeterUsageInput, completion: @escaping (ClientRuntime.SdkResult<MeterUsageOutputResponse, MeterUsageOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "meterUsage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<MeterUsageInput, MeterUsageOutputResponse, MeterUsageOutputError>(id: "meterUsage")
        operation.initializeStep.intercept(position: .after, middleware: MeterUsageInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: MeterUsageInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: MeterUsageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: MeterUsageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: MeterUsageInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<MeterUsageInput, MeterUsageOutputResponse, MeterUsageOutputError>(xAmzTarget: "AWSMPMeteringService.MeterUsage"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<MeterUsageInput, MeterUsageOutputResponse, MeterUsageOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering. Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call RegisterUsage, but you may choose to do so if you would like to receive usage data in your seller reports. The sections below explain the behavior of RegisterUsage. RegisterUsage performs two primary functions: metering and entitlement.
    ///
    /// * Entitlement: RegisterUsage allows you to verify that the customer running your paid software is subscribed to your product on AWS Marketplace, enabling you to guard against unauthorized use. Your container image that integrates with RegisterUsage is only required to guard against unauthorized use at container startup, as such a CustomerNotSubscribedException/PlatformNotSupportedException will only be thrown on the initial call to RegisterUsage. Subsequent calls from the same Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a CustomerNotSubscribedException, even if the customer unsubscribes while the Amazon ECS task or Amazon EKS pod is still running.
    ///
    /// * Metering: RegisterUsage meters software use per ECS task, per hour, or per pod for Amazon EKS with usage prorated to the second. A minimum of 1 minute of usage applies to tasks that are short lived. For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a service configured as a Daemon Set, then Amazon ECS or Amazon EKS will launch a task on all 10 cluster nodes and the customer will be charged: (10 * hourly_rate). Metering for software use is automatically handled by the AWS Marketplace Metering Control Plane -- your software is not required to perform any metering specific actions, other than call RegisterUsage once for metering of software use to commence. The AWS Marketplace Metering Control Plane will also continue to bill customers for running ECS tasks and Amazon EKS pods, regardless of the customers subscription state, removing the need for your software to perform entitlement checks at runtime.
    public func registerUsage(input: RegisterUsageInput, completion: @escaping (ClientRuntime.SdkResult<RegisterUsageOutputResponse, RegisterUsageOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "registerUsage")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<RegisterUsageInput, RegisterUsageOutputResponse, RegisterUsageOutputError>(id: "registerUsage")
        operation.initializeStep.intercept(position: .after, middleware: RegisterUsageInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: RegisterUsageInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: RegisterUsageInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: RegisterUsageInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: RegisterUsageInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<RegisterUsageInput, RegisterUsageOutputResponse, RegisterUsageOutputError>(xAmzTarget: "AWSMPMeteringService.RegisterUsage"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<RegisterUsageInput, RegisterUsageOutputResponse, RegisterUsageOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// ResolveCustomer is called by a SaaS application during the registration process. When a buyer visits your website during the registration process, the buyer submits a registration token through their browser. The registration token is resolved through this API to obtain a CustomerIdentifier and product code.
    public func resolveCustomer(input: ResolveCustomerInput, completion: @escaping (ClientRuntime.SdkResult<ResolveCustomerOutputResponse, ResolveCustomerOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "resolveCustomer")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "aws-marketplace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ResolveCustomerInput, ResolveCustomerOutputResponse, ResolveCustomerOutputError>(id: "resolveCustomer")
        operation.initializeStep.intercept(position: .after, middleware: ResolveCustomerInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: ResolveCustomerInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .after, middleware: ResolveCustomerInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ResolveCustomerInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: ResolveCustomerInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<ResolveCustomerInput, ResolveCustomerOutputResponse, ResolveCustomerOutputError>(xAmzTarget: "AWSMPMeteringService.ResolveCustomer"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<ResolveCustomerInput, ResolveCustomerOutputResponse, ResolveCustomerOutputError>(contentType: "application/x-amz-json-1.1"))
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
