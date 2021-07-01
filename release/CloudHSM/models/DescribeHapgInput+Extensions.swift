// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeHapgInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeHapgInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeHapgInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeHapgOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeHapgInput>
    public typealias MOutput = OperationOutput<DescribeHapgOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeHapgOutputError>
}

public struct DescribeHapgInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeHapgInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeHapgInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeHapgOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeHapgInput>
    public typealias MOutput = OperationOutput<DescribeHapgOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeHapgOutputError>
}

public struct DescribeHapgInputBodyMiddleware: Middleware {
    public let id: String = "DescribeHapgInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeHapgInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeHapgOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeHapgInput>
    public typealias MOutput = OperationOutput<DescribeHapgOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeHapgOutputError>
}

extension DescribeHapgInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case hapgArn = "HapgArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let hapgArn = hapgArn {
            try encodeContainer.encode(hapgArn, forKey: .hapgArn)
        }
    }
}