// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateTransitGatewayPeeringAttachmentInputHeadersMiddleware: Middleware {
    public let id: String = "CreateTransitGatewayPeeringAttachmentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTransitGatewayPeeringAttachmentOutputError>
}

public struct CreateTransitGatewayPeeringAttachmentInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateTransitGatewayPeeringAttachmentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTransitGatewayPeeringAttachmentOutputError>
}

public struct CreateTransitGatewayPeeringAttachmentInputBodyMiddleware: Middleware {
    public let id: String = "CreateTransitGatewayPeeringAttachmentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateTransitGatewayPeeringAttachmentInput>
    public typealias MOutput = OperationOutput<CreateTransitGatewayPeeringAttachmentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateTransitGatewayPeeringAttachmentOutputError>
}

extension CreateTransitGatewayPeeringAttachmentInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let peerAccountId = peerAccountId {
            try container.encode(peerAccountId, forKey: Key("PeerAccountId"))
        }
        if let peerRegion = peerRegion {
            try container.encode(peerRegion, forKey: Key("PeerRegion"))
        }
        if let peerTransitGatewayId = peerTransitGatewayId {
            try container.encode(peerTransitGatewayId, forKey: Key("PeerTransitGatewayId"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        if let transitGatewayId = transitGatewayId {
            try container.encode(transitGatewayId, forKey: Key("TransitGatewayId"))
        }
        try container.encode("CreateTransitGatewayPeeringAttachment", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}