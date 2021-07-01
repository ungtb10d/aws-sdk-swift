// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// These settings relate to the fragmented MP4 container for the segments in your DASH outputs.
public struct MpdSettings: Equatable {
    /// Optional. Choose Include (INCLUDE) to have MediaConvert mark up your DASH manifest with <Accessibility> elements for embedded 608 captions. This markup isn't generally required, but some video players require it to discover and play embedded 608 captions. Keep the default value, Exclude (EXCLUDE), to leave these elements out. When you enable this setting, this is the markup that MediaConvert includes in your manifest: <Accessibility schemeIdUri="urn:scte:dash:cc:cea-608:2015" value="CC1=eng"/>
    public let accessibilityCaptionHints: MpdAccessibilityCaptionHints?
    /// Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
    public let audioDuration: MpdAudioDuration?
    /// Use this setting only in DASH output groups that include sidecar TTML or IMSC captions.  You specify sidecar captions in a separate output from your audio and video. Choose Raw (RAW) for captions in a single XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4) for captions in XML format contained within fragmented MP4 files. This set of fragmented MP4 files is separate from your video and audio fragmented MP4 files.
    public let captionContainerType: MpdCaptionContainerType?
    /// Use this setting only when you specify SCTE-35 markers from ESAM. Choose INSERT to put SCTE-35 markers in this output at the insertion points that you specify in an ESAM XML document. Provide the document in the setting SCC XML (sccXml).
    public let scte35Esam: MpdScte35Esam?
    /// Ignore this setting unless you have SCTE-35 markers in your input video file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that appear in your input to also appear in this output. Choose None (NONE) if you don't want those SCTE-35 markers in this output.
    public let scte35Source: MpdScte35Source?

    public init (
        accessibilityCaptionHints: MpdAccessibilityCaptionHints? = nil,
        audioDuration: MpdAudioDuration? = nil,
        captionContainerType: MpdCaptionContainerType? = nil,
        scte35Esam: MpdScte35Esam? = nil,
        scte35Source: MpdScte35Source? = nil
    )
    {
        self.accessibilityCaptionHints = accessibilityCaptionHints
        self.audioDuration = audioDuration
        self.captionContainerType = captionContainerType
        self.scte35Esam = scte35Esam
        self.scte35Source = scte35Source
    }
}

extension MpdSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MpdSettings(accessibilityCaptionHints: \(String(describing: accessibilityCaptionHints)), audioDuration: \(String(describing: audioDuration)), captionContainerType: \(String(describing: captionContainerType)), scte35Esam: \(String(describing: scte35Esam)), scte35Source: \(String(describing: scte35Source)))"}
}