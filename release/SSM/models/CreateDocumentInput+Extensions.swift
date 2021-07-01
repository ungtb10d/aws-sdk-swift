// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CreateDocumentInputHeadersMiddleware: Middleware {
    public let id: String = "CreateDocumentInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDocumentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDocumentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDocumentInput>
    public typealias MOutput = OperationOutput<CreateDocumentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDocumentOutputError>
}

public struct CreateDocumentInputQueryItemMiddleware: Middleware {
    public let id: String = "CreateDocumentInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDocumentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDocumentOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<CreateDocumentInput>
    public typealias MOutput = OperationOutput<CreateDocumentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDocumentOutputError>
}

public struct CreateDocumentInputBodyMiddleware: Middleware {
    public let id: String = "CreateDocumentInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<CreateDocumentInput>,
                  next: H) -> Swift.Result<OperationOutput<CreateDocumentOutputResponse>, MError>
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

    public typealias MInput = SerializeStepInput<CreateDocumentInput>
    public typealias MOutput = OperationOutput<CreateDocumentOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<CreateDocumentOutputError>
}

extension CreateDocumentInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case attachments = "Attachments"
        case content = "Content"
        case displayName = "DisplayName"
        case documentFormat = "DocumentFormat"
        case documentType = "DocumentType"
        case name = "Name"
        case requires = "Requires"
        case tags = "Tags"
        case targetType = "TargetType"
        case versionName = "VersionName"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let attachments = attachments {
            var attachmentsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .attachments)
            for attachmentssourcelist0 in attachments {
                try attachmentsContainer.encode(attachmentssourcelist0)
            }
        }
        if let content = content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if let displayName = displayName {
            try encodeContainer.encode(displayName, forKey: .displayName)
        }
        if let documentFormat = documentFormat {
            try encodeContainer.encode(documentFormat.rawValue, forKey: .documentFormat)
        }
        if let documentType = documentType {
            try encodeContainer.encode(documentType.rawValue, forKey: .documentType)
        }
        if let name = name {
            try encodeContainer.encode(name, forKey: .name)
        }
        if let requires = requires {
            var requiresContainer = encodeContainer.nestedUnkeyedContainer(forKey: .requires)
            for documentrequireslist0 in requires {
                try requiresContainer.encode(documentrequireslist0)
            }
        }
        if let tags = tags {
            var tagsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .tags)
            for taglist0 in tags {
                try tagsContainer.encode(taglist0)
            }
        }
        if let targetType = targetType {
            try encodeContainer.encode(targetType, forKey: .targetType)
        }
        if let versionName = versionName {
            try encodeContainer.encode(versionName, forKey: .versionName)
        }
    }
}