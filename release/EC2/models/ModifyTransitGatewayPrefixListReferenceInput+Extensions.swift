// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyTransitGatewayPrefixListReferenceInputHeadersMiddleware: Middleware {
    public let id: String = "ModifyTransitGatewayPrefixListReferenceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>
    public typealias MOutput = OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTransitGatewayPrefixListReferenceOutputError>
}

public struct ModifyTransitGatewayPrefixListReferenceInputQueryItemMiddleware: Middleware {
    public let id: String = "ModifyTransitGatewayPrefixListReferenceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>
    public typealias MOutput = OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTransitGatewayPrefixListReferenceOutputError>
}

public struct ModifyTransitGatewayPrefixListReferenceInputBodyMiddleware: Middleware {
    public let id: String = "ModifyTransitGatewayPrefixListReferenceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>,
                  next: H) -> Swift.Result<OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            let encoder = context.getEncoder()
            let data = try encoder.encode(input.operationInput)
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ModifyTransitGatewayPrefixListReferenceInput>
    public typealias MOutput = OperationOutput<ModifyTransitGatewayPrefixListReferenceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ModifyTransitGatewayPrefixListReferenceOutputError>
}

extension ModifyTransitGatewayPrefixListReferenceInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if blackhole != false {
            try container.encode(blackhole, forKey: Key("Blackhole"))
        }
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let prefixListId = prefixListId {
            try container.encode(prefixListId, forKey: Key("PrefixListId"))
        }
        if let transitGatewayAttachmentId = transitGatewayAttachmentId {
            try container.encode(transitGatewayAttachmentId, forKey: Key("TransitGatewayAttachmentId"))
        }
        if let transitGatewayRouteTableId = transitGatewayRouteTableId {
            try container.encode(transitGatewayRouteTableId, forKey: Key("TransitGatewayRouteTableId"))
        }
        try container.encode("ModifyTransitGatewayPrefixListReference", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}