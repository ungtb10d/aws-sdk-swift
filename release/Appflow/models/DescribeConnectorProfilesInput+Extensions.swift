// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeConnectorProfilesInputHeadersMiddleware: Middleware {
    public let id: String = "DescribeConnectorProfilesInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeConnectorProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeConnectorProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeConnectorProfilesInput>
    public typealias MOutput = OperationOutput<DescribeConnectorProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeConnectorProfilesOutputError>
}

public struct DescribeConnectorProfilesInputQueryItemMiddleware: Middleware {
    public let id: String = "DescribeConnectorProfilesInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeConnectorProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeConnectorProfilesOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<DescribeConnectorProfilesInput>
    public typealias MOutput = OperationOutput<DescribeConnectorProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeConnectorProfilesOutputError>
}

public struct DescribeConnectorProfilesInputBodyMiddleware: Middleware {
    public let id: String = "DescribeConnectorProfilesInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<DescribeConnectorProfilesInput>,
                  next: H) -> Swift.Result<OperationOutput<DescribeConnectorProfilesOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<DescribeConnectorProfilesInput>
    public typealias MOutput = OperationOutput<DescribeConnectorProfilesOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<DescribeConnectorProfilesOutputError>
}

extension DescribeConnectorProfilesInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case connectorProfileNames
        case connectorType
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let connectorProfileNames = connectorProfileNames {
            var connectorProfileNamesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .connectorProfileNames)
            for connectorprofilenamelist0 in connectorProfileNames {
                try connectorProfileNamesContainer.encode(connectorprofilenamelist0)
            }
        }
        if let connectorType = connectorType {
            try encodeContainer.encode(connectorType.rawValue, forKey: .connectorType)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}