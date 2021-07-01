// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeLocationS3InputHeadersMiddleware: Middleware {
    public let id: String = "DescribeLocationS3InputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationS3Input>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationS3OutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLocationS3Input>
    public typealias MOutput = OperationOutput<DescribeLocationS3OutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationS3OutputError>
}

public struct DescribeLocationS3InputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeLocationS3InputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationS3Input>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationS3OutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeLocationS3Input>
    public typealias MOutput = OperationOutput<DescribeLocationS3OutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationS3OutputError>
}

public struct DescribeLocationS3InputBodyMiddleware: Middleware {
    public let id: String = "DescribeLocationS3InputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeLocationS3Input>,
                  next: H) -> Swift.Result<OperationOutput<DescribeLocationS3OutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeLocationS3Input>
    public typealias MOutput = OperationOutput<DescribeLocationS3OutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeLocationS3OutputError>
}

extension DescribeLocationS3Input: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case locationArn = "LocationArn"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let locationArn = locationArn {
            try encodeContainer.encode(locationArn, forKey: .locationArn)
        }
    }
}