// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct RecognizeUtteranceInputHeadersMiddleware: Middleware {
    public let id: String = "RecognizeUtteranceInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecognizeUtteranceInput>,
                  next: H) -> Swift.Result<OperationOutput<RecognizeUtteranceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let requestAttributes = input.operationInput.requestAttributes {
            input.builder.withHeader(name: "x-amz-lex-request-attributes", value: String(requestAttributes))
        }
        if let requestContentType = input.operationInput.requestContentType {
            input.builder.withHeader(name: "Content-Type", value: String(requestContentType))
        }
        if let responseContentType = input.operationInput.responseContentType {
            input.builder.withHeader(name: "Response-Content-Type", value: String(responseContentType))
        }
        if let sessionState = input.operationInput.sessionState {
            input.builder.withHeader(name: "x-amz-lex-session-state", value: String(sessionState))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RecognizeUtteranceInput>
    public typealias MOutput = OperationOutput<RecognizeUtteranceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecognizeUtteranceOutputError>
}

public struct RecognizeUtteranceInputQueryItemMiddleware: Middleware {
    public let id: String = "RecognizeUtteranceInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecognizeUtteranceInput>,
                  next: H) -> Swift.Result<OperationOutput<RecognizeUtteranceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RecognizeUtteranceInput>
    public typealias MOutput = OperationOutput<RecognizeUtteranceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecognizeUtteranceOutputError>
}

public struct RecognizeUtteranceInputBodyMiddleware: Middleware {
    public let id: String = "RecognizeUtteranceInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<RecognizeUtteranceInput>,
                  next: H) -> Swift.Result<OperationOutput<RecognizeUtteranceOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let inputStream = input.operationInput.inputStream {
            let data = inputStream
            let body = HttpBody.data(data)
            input.builder.withBody(body)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<RecognizeUtteranceInput>
    public typealias MOutput = OperationOutput<RecognizeUtteranceOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<RecognizeUtteranceOutputError>
}

extension RecognizeUtteranceInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case inputStream
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let inputStream = inputStream {
            try encodeContainer.encode(inputStream.base64EncodedString(), forKey: .inputStream)
        }
    }
}