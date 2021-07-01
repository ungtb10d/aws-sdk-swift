// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeProjectVersionsInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeProjectVersionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProjectVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProjectVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProjectVersionsInput>
    public typealias MOutput = OperationOutput<DescribeProjectVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProjectVersionsOutputError>
}

public struct DescribeProjectVersionsInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeProjectVersionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProjectVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProjectVersionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeProjectVersionsInput>
    public typealias MOutput = OperationOutput<DescribeProjectVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProjectVersionsOutputError>
}

public struct DescribeProjectVersionsInputBodyMiddleware: Middleware {
    public let id: String = "DescribeProjectVersionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeProjectVersionsInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeProjectVersionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeProjectVersionsInput>
    public typealias MOutput = OperationOutput<DescribeProjectVersionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeProjectVersionsOutputError>
}

extension DescribeProjectVersionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case projectArn = "ProjectArn"
        case versionNames = "VersionNames"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let projectArn = projectArn {
            try encodeContainer.encode(projectArn, forKey: .projectArn)
        }
        if let versionNames = versionNames {
            var versionNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .versionNames)
            for versionnames0 in versionNames {
                try versionNamesContainer.encode(versionnames0)
            }
        }
    }
}