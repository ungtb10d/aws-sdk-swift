// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartImportLabelsTaskRunInputHeadersMiddleware: Middleware {
    public let id: String = "StartImportLabelsTaskRunInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartImportLabelsTaskRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartImportLabelsTaskRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartImportLabelsTaskRunInput>
    public typealias MOutput = OperationOutput<StartImportLabelsTaskRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartImportLabelsTaskRunOutputError>
}

public struct StartImportLabelsTaskRunInputQueryItemMiddleware: Middleware {
    public let id: String = "StartImportLabelsTaskRunInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartImportLabelsTaskRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartImportLabelsTaskRunOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<StartImportLabelsTaskRunInput>
    public typealias MOutput = OperationOutput<StartImportLabelsTaskRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartImportLabelsTaskRunOutputError>
}

public struct StartImportLabelsTaskRunInputBodyMiddleware: Middleware {
    public let id: String = "StartImportLabelsTaskRunInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<StartImportLabelsTaskRunInput>,
                  next: H) -> Swift.Result<OperationOutput<StartImportLabelsTaskRunOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<StartImportLabelsTaskRunInput>
    public typealias MOutput = OperationOutput<StartImportLabelsTaskRunOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<StartImportLabelsTaskRunOutputError>
}

extension StartImportLabelsTaskRunInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case inputS3Path = "InputS3Path"
        case replaceAllLabels = "ReplaceAllLabels"
        case transformId = "TransformId"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let inputS3Path = inputS3Path {
            try encodeContainer.encode(inputS3Path, forKey: .inputS3Path)
        }
        if replaceAllLabels != false {
            try encodeContainer.encode(replaceAllLabels, forKey: .replaceAllLabels)
        }
        if let transformId = transformId {
            try encodeContainer.encode(transformId, forKey: .transformId)
        }
    }
}