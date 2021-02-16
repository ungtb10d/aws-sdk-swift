package software.amazon.smithy.aws.swift.codegen.awsjson

import software.amazon.smithy.aws.swift.codegen.AWSHttpBindingProtocolGenerator
import software.amazon.smithy.aws.swift.codegen.AWSHttpProtocolClientGeneratorFactory
import software.amazon.smithy.aws.traits.protocols.AwsJson1_1Trait
import software.amazon.smithy.model.shapes.ShapeId
import software.amazon.smithy.model.traits.TimestampFormatTrait
import software.amazon.smithy.swift.codegen.integration.HttpBindingResolver
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator

class AwsJson1_1_ProtocolGenerator : AWSHttpBindingProtocolGenerator() {
    override val defaultContentType: String = "application/x-amz-json-1.1"
    override val defaultTimestampFormat: TimestampFormatTrait.Format = TimestampFormatTrait.Format.EPOCH_SECONDS
    override val protocol: ShapeId = AwsJson1_1Trait.ID
    override val httpProtocolClientGeneratorFactory = AWSHttpProtocolClientGeneratorFactory(protocol)
    override val errorFromHttpResponseGenerator = AWSErrorFromAWSJsonHttpResponseGenerator()

    override fun getProtocolHttpBindingResolver(ctx: ProtocolGenerator.GenerationContext):
        HttpBindingResolver = AwsJsonHttpBindingResolver(ctx)
}