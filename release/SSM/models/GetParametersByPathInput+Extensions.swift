// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetParametersByPathInputHeadersMiddleware: Middleware {
    public let id: String = "GetParametersByPathInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetParametersByPathInput>,
                  next: H) -> Swift.Result<OperationOutput<GetParametersByPathOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetParametersByPathInput>
    public typealias MOutput = OperationOutput<GetParametersByPathOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetParametersByPathOutputError>
}

public struct GetParametersByPathInputQueryItemMiddleware: Middleware {
    public let id: String = "GetParametersByPathInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetParametersByPathInput>,
                  next: H) -> Swift.Result<OperationOutput<GetParametersByPathOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<GetParametersByPathInput>
    public typealias MOutput = OperationOutput<GetParametersByPathOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetParametersByPathOutputError>
}

public struct GetParametersByPathInputBodyMiddleware: Middleware {
    public let id: String = "GetParametersByPathInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<GetParametersByPathInput>,
                  next: H) -> Swift.Result<OperationOutput<GetParametersByPathOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<GetParametersByPathInput>
    public typealias MOutput = OperationOutput<GetParametersByPathOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<GetParametersByPathOutputError>
}

extension GetParametersByPathInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
        case parameterFilters = "ParameterFilters"
        case path = "Path"
        case recursive = "Recursive"
        case withDecryption = "WithDecryption"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
        if let parameterFilters = parameterFilters {
            var parameterFiltersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .parameterFilters)
            for parameterstringfilterlist0 in parameterFilters {
                try parameterFiltersContainer.encode(parameterstringfilterlist0)
            }
        }
        if let path = path {
            try encodeContainer.encode(path, forKey: .path)
        }
        if recursive != false {
            try encodeContainer.encode(recursive, forKey: .recursive)
        }
        if withDecryption != false {
            try encodeContainer.encode(withDecryption, forKey: .withDecryption)
        }
    }
}