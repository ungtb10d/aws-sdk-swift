// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ListExclusionsInputHeadersMiddleware: Middleware {
    public let id: String = "ListExclusionsInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListExclusionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListExclusionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListExclusionsInput>
    public typealias MOutput = OperationOutput<ListExclusionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListExclusionsOutputError>
}

public struct ListExclusionsInputQueryItemMiddleware: Middleware {
    public let id: String = "ListExclusionsInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListExclusionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListExclusionsOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<ListExclusionsInput>
    public typealias MOutput = OperationOutput<ListExclusionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListExclusionsOutputError>
}

public struct ListExclusionsInputBodyMiddleware: Middleware {
    public let id: String = "ListExclusionsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<ListExclusionsInput>,
                  next: H) -> Swift.Result<OperationOutput<ListExclusionsOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<ListExclusionsInput>
    public typealias MOutput = OperationOutput<ListExclusionsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<ListExclusionsOutputError>
}

extension ListExclusionsInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case assessmentRunArn
        case maxResults
        case nextToken
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let assessmentRunArn = assessmentRunArn {
            try encodeContainer.encode(assessmentRunArn, forKey: .assessmentRunArn)
        }
        if let maxResults = maxResults {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}