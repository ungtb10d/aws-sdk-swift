// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class Route53RecoveryClusterClient {
    public static let clientName = "Route53RecoveryClusterClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "Route53 Recovery Cluster"
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

    public convenience init(region: Swift.String) throws {
        let config = try Route53RecoveryClusterClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await Route53RecoveryClusterClientConfiguration()
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class Route53RecoveryClusterClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

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
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?

        public init(
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            self.region = region
            self.signingRegion = signingRegion ?? region
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
            region: Swift.String,
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("Route53RecoveryClusterClient")
            try self.init(region: region, credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) async throws {
            let resolvedRegionResolver = regionResolver ?? DefaultRegionResolver()
            self.region = await resolvedRegionResolver.resolveRegion()
            self.regionResolver = resolvedRegionResolver
            self.signingRegion = signingRegion ?? region
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
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) async throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("Route53RecoveryClusterClient")
            try await self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct Route53RecoveryClusterClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "Route53RecoveryClusterClient"
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

extension Route53RecoveryClusterClient: Route53RecoveryClusterClientProtocol {
    /// Get the state for a routing control. A routing control is a simple on/off switch that you can use to route traffic to cells. When the state is On, traffic flows to a cell. When it's off, traffic does not flow. Before you can create a routing control, you first must create a cluster to host the control. For more information, see [CreateCluster](https://docs.aws.amazon.com/recovery-cluster/latest/api/cluster.html). Access one of the endpoints for the cluster to get or update the routing control state to redirect traffic. For more information about working with routing controls, see [Routing control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html) in the Route 53 Application Recovery Controller Developer Guide.
    public func getRoutingControlState(input: GetRoutingControlStateInput) async throws -> GetRoutingControlStateOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(id: "getRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>(xAmzTarget: "ToggleCustomerAPI.GetRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetRoutingControlStateInput, GetRoutingControlStateOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetRoutingControlStateOutputResponse, GetRoutingControlStateOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Set the state of the routing control to reroute traffic. You can set the value to be On or Off. When the state is On, traffic flows to a cell. When it's off, traffic does not flow. For more information about working with routing controls, see [Routing control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html) in the Route 53 Application Recovery Controller Developer Guide.
    public func updateRoutingControlState(input: UpdateRoutingControlStateInput) async throws -> UpdateRoutingControlStateOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlState")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(id: "updateRoutingControlState")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlState"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStateInput, UpdateRoutingControlStateOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStateOutputResponse, UpdateRoutingControlStateOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Set multiple routing control states. You can set the value for each state to be On or Off. When the state is On, traffic flows to a cell. When it's off, traffic does not flow. For more information about working with routing controls, see [Routing control](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.html) in the Route 53 Application Recovery Controller Developer Guide.
    public func updateRoutingControlStates(input: UpdateRoutingControlStatesInput) async throws -> UpdateRoutingControlStatesOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateRoutingControlStates")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "route53-recovery-cluster")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(id: "updateRoutingControlStates")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>(xAmzTarget: "ToggleCustomerAPI.UpdateRoutingControlStates"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateRoutingControlStatesInput, UpdateRoutingControlStatesOutputResponse>(contentType: "application/x-amz-json-1.0"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateRoutingControlStatesOutputResponse, UpdateRoutingControlStatesOutputError>())
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}
