// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeOrganizationalUnitInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeOrganizationalUnitInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationalUnitInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationalUnitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeOrganizationalUnitInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationalUnitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationalUnitOutputError>
}

public struct DescribeOrganizationalUnitInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeOrganizationalUnitInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationalUnitInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationalUnitOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeOrganizationalUnitInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationalUnitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationalUnitOutputError>
}

public struct DescribeOrganizationalUnitInputBodyMiddleware: Middleware {
    public let id: String = "DescribeOrganizationalUnitInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeOrganizationalUnitInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeOrganizationalUnitOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeOrganizationalUnitInput>
    public typealias MOutput = OperationOutput<DescribeOrganizationalUnitOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeOrganizationalUnitOutputError>
}

extension DescribeOrganizationalUnitInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case organizationalUnitId = "OrganizationalUnitId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let organizationalUnitId = organizationalUnitId {
            try encodeContainer.encode(organizationalUnitId, forKey: .organizationalUnitId)
        }
    }
}