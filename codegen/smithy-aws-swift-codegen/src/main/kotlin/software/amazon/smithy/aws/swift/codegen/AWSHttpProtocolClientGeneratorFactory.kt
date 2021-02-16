package software.amazon.smithy.aws.swift.codegen

import software.amazon.smithy.model.shapes.ShapeId
import software.amazon.smithy.swift.codegen.SwiftWriter
import software.amazon.smithy.swift.codegen.integration.ClientProperty
import software.amazon.smithy.swift.codegen.integration.HttpBindingResolver
import software.amazon.smithy.swift.codegen.integration.HttpProtocolClientGenerator
import software.amazon.smithy.swift.codegen.integration.HttpProtocolClientGeneratorFactory
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator

class AWSHttpProtocolClientGeneratorFactory(val protocol: ShapeId) : HttpProtocolClientGeneratorFactory {
    override fun createHttpProtocolClientGenerator(
        ctx: ProtocolGenerator.GenerationContext,
        httpBindingResolver: HttpBindingResolver,
        writer: SwiftWriter,
        serviceName: String,
        defaultContentType: String
    ): HttpProtocolClientGenerator {
        val properties = getClientProperties(ctx)
        val serviceName = ctx.symbolProvider.toSymbol(ctx.service).name
        val config = AWSServiceConfig(writer, serviceName)
        val clientCustomizable = AWSHttpProtocolClientCustomizableFactory().constructClientCustomizable(protocol)
        return HttpProtocolClientGenerator(ctx, writer, properties, config, httpBindingResolver, defaultContentType, clientCustomizable)
    }

    private fun getClientProperties(ctx: ProtocolGenerator.GenerationContext): List<ClientProperty> {
        val features = mutableListOf<ClientProperty>()
        val requestEncoderOptions = mutableMapOf<String, String>()
        val responseDecoderOptions = mutableMapOf<String, String>()
        // TODO:: Subject to change if Foundation dependency is removed
        requestEncoderOptions["dateEncodingStrategy"] = ".secondsSince1970"
        responseDecoderOptions["dateDecodingStrategy"] = ".secondsSince1970"
        features.add(AWSHttpRequestJsonEncoder(requestEncoderOptions))
        features.add(AWSHttpResponseJsonDecoder(responseDecoderOptions))
        return features
    }
}
