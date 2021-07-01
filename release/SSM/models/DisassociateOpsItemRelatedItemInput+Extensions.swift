// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DisassociateOpsItemRelatedItemInputHeadersMiddleware: Middleware {
    public let id: String = "DisassociateOpsItemRelatedItemInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateOpsItemRelatedItemInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateOpsItemRelatedItemInput>
    public typealias MOutput = OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateOpsItemRelatedItemOutputError>
}

public struct DisassociateOpsItemRelatedItemInputQueryItemMiddleware: Middleware {
    public let id: String = "DisassociateOpsItemRelatedItemInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateOpsItemRelatedItemInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateOpsItemRelatedItemInput>
    public typealias MOutput = OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateOpsItemRelatedItemOutputError>
}

public struct DisassociateOpsItemRelatedItemInputBodyMiddleware: Middleware {
    public let id: String = "DisassociateOpsItemRelatedItemInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DisassociateOpsItemRelatedItemInput>,
                  next: H) -> Swift.Result<OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        do {
            if try !input.operationInput.allPropertiesAreNull() {
                let encoder = context.getEncoder()
                let data = try encoder.encode(input.operationInput)
                let body = HttpBody.data(data)
                input.builder.withBody(body)
            }
        } catch let err {
            return .failure(.client(ClientError.serializationFailed(err.localizedDescription)))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DisassociateOpsItemRelatedItemInput>
    public typealias MOutput = OperationOutput<DisassociateOpsItemRelatedItemOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DisassociateOpsItemRelatedItemOutputError>
}

extension DisassociateOpsItemRelatedItemInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case associationId = "AssociationId"
        case opsItemId = "OpsItemId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let associationId = associationId {
            try encodeContainer.encode(associationId, forKey: .associationId)
        }
        if let opsItemId = opsItemId {
            try encodeContainer.encode(opsItemId, forKey: .opsItemId)
        }
    }
}