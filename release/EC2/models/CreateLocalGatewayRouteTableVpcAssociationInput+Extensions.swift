// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateLocalGatewayRouteTableVpcAssociationInputHeadersMiddleware: Middleware {
    public let id: String = "CreateLocalGatewayRouteTableVpcAssociationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>
    public typealias MOutput = OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLocalGatewayRouteTableVpcAssociationOutputError>
}

public struct CreateLocalGatewayRouteTableVpcAssociationInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateLocalGatewayRouteTableVpcAssociationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>
    public typealias MOutput = OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLocalGatewayRouteTableVpcAssociationOutputError>
}

public struct CreateLocalGatewayRouteTableVpcAssociationInputBodyMiddleware: Middleware {
    public let id: String = "CreateLocalGatewayRouteTableVpcAssociationInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateLocalGatewayRouteTableVpcAssociationInput>
    public typealias MOutput = OperationOutput<CreateLocalGatewayRouteTableVpcAssociationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateLocalGatewayRouteTableVpcAssociationOutputError>
}

extension CreateLocalGatewayRouteTableVpcAssociationInput: Encodable, Reflection {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Key.self)
        if dryRun != false {
            try container.encode(dryRun, forKey: Key("DryRun"))
        }
        if let localGatewayRouteTableId = localGatewayRouteTableId {
            try container.encode(localGatewayRouteTableId, forKey: Key("LocalGatewayRouteTableId"))
        }
        if let tagSpecifications = tagSpecifications {
            if !tagSpecifications.isEmpty {
                for (index0, tagspecification0) in tagSpecifications.enumerated() {
                    var tagSpecificationsContainer0 = container.nestedContainer(keyedBy: Key.self, forKey: Key("TagSpecification.\(index0.advanced(by: 1))"))
                    try tagSpecificationsContainer0.encode(tagspecification0, forKey: Key(""))
                }
            }
        }
        if let vpcId = vpcId {
            try container.encode(vpcId, forKey: Key("VpcId"))
        }
        try container.encode("CreateLocalGatewayRouteTableVpcAssociation", forKey:Key("Action"))
        try container.encode("2016-11-15", forKey:Key("Version"))
    }
}