// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeWorkspaceBundlesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeWorkspaceBundlesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorkspaceBundlesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorkspaceBundlesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeWorkspaceBundlesInput>
    public typealias MOutput = OperationOutput<DescribeWorkspaceBundlesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorkspaceBundlesOutputError>
}

public struct DescribeWorkspaceBundlesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeWorkspaceBundlesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorkspaceBundlesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorkspaceBundlesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeWorkspaceBundlesInput>
    public typealias MOutput = OperationOutput<DescribeWorkspaceBundlesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorkspaceBundlesOutputError>
}

public struct DescribeWorkspaceBundlesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeWorkspaceBundlesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeWorkspaceBundlesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeWorkspaceBundlesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeWorkspaceBundlesInput>
    public typealias MOutput = OperationOutput<DescribeWorkspaceBundlesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeWorkspaceBundlesOutputError>
}

extension DescribeWorkspaceBundlesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case bundleIds = "BundleIds"
        case nextToken = "NextToken"
        case owner = "Owner"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let bundleIds = bundleIds {
            var bundleIdsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .bundleIds)
            for bundleidlist0 in bundleIds {
                try bundleIdsContainer.encode(bundleidlist0)
            }
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let owner = owner {
            try encodeContainer.encode(owner, forKey: .owner)
        }
    }
}