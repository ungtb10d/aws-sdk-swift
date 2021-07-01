// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeProductInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeProductInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProductInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProductOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProductInput>
    public typealias MOutput = OperationOutput<DescribeProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProductOutputError>
}

public struct DescribeProductInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeProductInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProductInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProductOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProductInput>
    public typealias MOutput = OperationOutput<DescribeProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProductOutputError>
}

public struct DescribeProductInputBodyMiddleware: Middleware {
    public let id: String = "DescribeProductInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProductInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProductOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeProductInput>
    public typealias MOutput = OperationOutput<DescribeProductOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProductOutputError>
}

extension DescribeProductInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case acceptLanguage = "AcceptLanguage"
        case id = "Id"
        case name = "Name"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let acceptLanguage = acceptLanguage {
            try encodeContainer.encode(acceptLanguage, forKey: .acceptLanguage)
        }
        if let id = id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
    }
}