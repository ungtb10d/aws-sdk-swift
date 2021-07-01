// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetBucketReplicationInputHeadersMiddleware: Middleware {
    public let id: String = "GetBucketReplicationInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBucketReplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBucketReplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let expectedBucketOwner = input.operationInput.expectedBucketOwner {
            input.builder.withHeader(name: "x-amz-expected-bucket-owner", value: String(expectedBucketOwner))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBucketReplicationInput>
    public typealias MOutput = OperationOutput<GetBucketReplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBucketReplicationOutputError>
}

public struct GetBucketReplicationInputQueryItemMiddleware: Middleware {
    public let id: String = "GetBucketReplicationInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetBucketReplicationInput>,
                  next: H) -> Swift.Result<OperationOutput<GetBucketReplicationOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        input.builder.withQueryItem(URLQueryItem(name: "replication", value: nil))
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetBucketReplicationInput>
    public typealias MOutput = OperationOutput<GetBucketReplicationOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetBucketReplicationOutputError>
}

extension GetBucketReplicationInput: Encodable, Reflection {

    public func encode(to encoder: Encoder) throws {
    }
}