// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Avail Blanking
public struct AvailBlanking: Equatable {
    /// Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
    public let availBlankingImage: InputLocation?
    /// When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
    public let state: AvailBlankingState?

    public init (
        availBlankingImage: InputLocation? = nil,
        state: AvailBlankingState? = nil
    )
    {
        self.availBlankingImage = availBlankingImage
        self.state = state
    }
}

extension AvailBlanking: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AvailBlanking(availBlankingImage: \(String(describing: availBlankingImage)), state: \(String(describing: state)))"}
}