// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SendCommandInputHeadersMiddleware: Middleware {
    public let id: String = "SendCommandInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendCommandInput>,
                  next: H) -> Swift.Result<OperationOutput<SendCommandOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendCommandInput>
    public typealias MOutput = OperationOutput<SendCommandOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendCommandOutputError>
}

public struct SendCommandInputQueryItemMiddleware: Middleware {
    public let id: String = "SendCommandInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendCommandInput>,
                  next: H) -> Swift.Result<OperationOutput<SendCommandOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<SendCommandInput>
    public typealias MOutput = OperationOutput<SendCommandOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendCommandOutputError>
}

public struct SendCommandInputBodyMiddleware: Middleware {
    public let id: String = "SendCommandInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<SendCommandInput>,
                  next: H) -> Swift.Result<OperationOutput<SendCommandOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<SendCommandInput>
    public typealias MOutput = OperationOutput<SendCommandOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<SendCommandOutputError>
}

extension SendCommandInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case abortTransaction = "AbortTransaction"
        case commitTransaction = "CommitTransaction"
        case endSession = "EndSession"
        case executeStatement = "ExecuteStatement"
        case fetchPage = "FetchPage"
        case sessionToken = "SessionToken"
        case startSession = "StartSession"
        case startTransaction = "StartTransaction"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let abortTransaction = abortTransaction {
            try encodeContainer.encode(abortTransaction, forKey: .abortTransaction)
        }
        if let commitTransaction = commitTransaction {
            try encodeContainer.encode(commitTransaction, forKey: .commitTransaction)
        }
        if let endSession = endSession {
            try encodeContainer.encode(endSession, forKey: .endSession)
        }
        if let executeStatement = executeStatement {
            try encodeContainer.encode(executeStatement, forKey: .executeStatement)
        }
        if let fetchPage = fetchPage {
            try encodeContainer.encode(fetchPage, forKey: .fetchPage)
        }
        if let sessionToken = sessionToken {
            try encodeContainer.encode(sessionToken, forKey: .sessionToken)
        }
        if let startSession = startSession {
            try encodeContainer.encode(startSession, forKey: .startSession)
        }
        if let startTransaction = startTransaction {
            try encodeContainer.encode(startTransaction, forKey: .startTransaction)
        }
    }
}