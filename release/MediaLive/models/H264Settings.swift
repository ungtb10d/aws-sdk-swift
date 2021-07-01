// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// H264 Settings
public struct H264Settings: Equatable {
    /// Enables or disables adaptive quantization, which is a technique MediaLive can apply to video on a frame-by-frame basis to produce more compression without losing quality. There are three types of adaptive quantization: flicker, spatial, and temporal. Set the field in one of these ways: Set to Auto. Recommended. For each type of AQ, MediaLive will determine if AQ is needed, and if so, the appropriate strength. Set a strength (a value other than Auto or Disable). This strength will apply to any of the AQ fields that you choose to enable. Set to Disabled to disable all types of adaptive quantization.
    public let adaptiveQuantization: H264AdaptiveQuantization?
    /// Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
    public let afdSignaling: AfdSignaling?
    /// Average bitrate in bits/second. Required when the rate control mode is VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output must have a unique value when its bitrate is rounded down to the nearest multiple of 1000.
    public let bitrate: Int
    /// Percentage of the buffer that should initially be filled (HRD buffer model).
    public let bufFillPct: Int
    /// Size of buffer (HRD buffer model) in bits.
    public let bufSize: Int
    /// Includes colorspace metadata in the output.
    public let colorMetadata: H264ColorMetadata?
    /// Color Space settings
    public let colorSpaceSettings: H264ColorSpaceSettings?
    /// Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
    public let entropyEncoding: H264EntropyEncoding?
    /// Optional filters that you can apply to an encode.
    public let filterSettings: H264FilterSettings?
    /// Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
    public let fixedAfd: FixedAfd?
    /// Flicker AQ makes adjustments within each frame to reduce flicker or 'pop' on I-frames. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if flicker AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply flicker AQ using the specified strength. Disabled: MediaLive won't apply flicker AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply flicker AQ.
    public let flickerAq: H264FlickerAq?
    /// This setting applies only when scan type is "interlaced." It controls whether coding is performed on a field basis or on a frame basis. (When the video is progressive, the coding is always performed on a frame basis.)
    /// enabled: Force MediaLive to code on a field basis, so that odd and even sets of fields are coded separately.
    /// disabled: Code the two sets of fields separately (on a field basis) or together (on a frame basis using PAFF), depending on what is most appropriate for the content.
    public let forceFieldPictures: H264ForceFieldPictures?
    /// This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
    public let framerateControl: H264FramerateControl?
    /// Framerate denominator.
    public let framerateDenominator: Int
    /// Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
    public let framerateNumerator: Int
    /// Documentation update needed
    public let gopBReference: H264GopBReference?
    /// Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
    public let gopClosedCadence: Int
    /// Number of B-frames between reference frames.
    public let gopNumBFrames: Int
    /// GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits.
    /// If gopSizeUnits is frames, gopSize must be an integer and must be greater than or equal to 1.
    /// If gopSizeUnits is seconds, gopSize must be greater than 0, but need not be an integer.
    public let gopSize: Double
    /// Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
    public let gopSizeUnits: H264GopSizeUnits?
    /// H.264 Level.
    public let level: H264Level?
    /// Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
    public let lookAheadRateControl: H264LookAheadRateControl?
    /// For QVBR: See the tooltip for Quality level
    ///
    /// For VBR: Set the maximum bitrate in order to accommodate expected spikes in the complexity of the video.
    public let maxBitrate: Int
    /// Only meaningful if sceneChangeDetect is set to enabled.  Defaults to 5 if multiplex rate control is used.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
    public let minIInterval: Int
    /// Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
    public let numRefFrames: Int
    /// This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
    public let parControl: H264ParControl?
    /// Pixel Aspect Ratio denominator.
    public let parDenominator: Int
    /// Pixel Aspect Ratio numerator.
    public let parNumerator: Int
    /// H.264 Profile.
    public let profile: H264Profile?
    /// Leave as STANDARD_QUALITY or choose a different value (which might result in additional costs to run the channel).
    /// - ENHANCED_QUALITY: Produces a slightly better video quality without an increase in the bitrate. Has an effect only when the Rate control mode is QVBR or CBR. If this channel is in a MediaLive multiplex, the value must be ENHANCED_QUALITY.
    /// - STANDARD_QUALITY: Valid for any Rate control mode.
    public let qualityLevel: H264QualityLevel?
    /// Controls the target quality for the video encode. Applies only when the rate control mode is QVBR. You can set a target quality or you can let MediaLive determine the best quality. To set a target quality, enter values in the QVBR quality level field and the Max bitrate field. Enter values that suit your most important viewing devices. Recommended values are:
    /// - Primary screen: Quality level: 8 to 10. Max bitrate: 4M
    /// - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M
    /// - Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    /// To let MediaLive decide, leave the QVBR quality level field empty, and in Max bitrate enter the maximum rate you want in the video. For more information, see the section called "Video - rate control mode" in the MediaLive user guide
    public let qvbrQualityLevel: Int
    /// Rate control mode.
    ///
    /// QVBR: Quality will match the specified quality level except when it is constrained by the
    /// maximum bitrate.  Recommended if you or your viewers pay for bandwidth.
    ///
    /// VBR: Quality and bitrate vary, depending on the video complexity. Recommended instead of QVBR
    /// if you want to maintain a specific average bitrate over the duration of the channel.
    ///
    /// CBR: Quality varies, depending on the video complexity. Recommended only if you distribute
    /// your assets to devices that cannot handle variable bitrates.
    ///
    /// Multiplex: This rate control mode is only supported (and is required) when the video is being
    /// delivered to a MediaLive Multiplex in which case the rate control configuration is controlled
    /// by the properties within the Multiplex Program.
    public let rateControlMode: H264RateControlMode?
    /// Sets the scan type of the output to progressive or top-field-first interlaced.
    public let scanType: H264ScanType?
    /// Scene change detection.
    ///
    /// - On: inserts I-frames when scene change is detected.
    /// - Off: does not force an I-frame when scene change is detected.
    public let sceneChangeDetect: H264SceneChangeDetect?
    /// Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
    /// This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
    public let slices: Int
    /// Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.  If not set to zero, must be greater than 15.
    public let softness: Int
    /// Spatial AQ makes adjustments within each frame based on spatial variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if spatial AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply spatial AQ using the specified strength. Disabled: MediaLive won't apply spatial AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply spatial AQ.
    public let spatialAq: H264SpatialAq?
    /// If set to fixed, use gopNumBFrames B-frames per sub-GOP. If set to dynamic, optimize the number of B-frames used for each sub-GOP to improve visual quality.
    public let subgopLength: H264SubGopLength?
    /// Produces a bitstream compliant with SMPTE RP-2027.
    public let syntax: H264Syntax?
    /// Temporal makes adjustments within each frame based on temporal variation of content complexity. The value to enter in this field depends on the value in the Adaptive quantization field: If you have set the Adaptive quantization field to Auto, MediaLive ignores any value in this field. MediaLive will determine if temporal AQ is appropriate and will apply the appropriate strength. If you have set the Adaptive quantization field to a strength, you can set this field to Enabled or Disabled. Enabled: MediaLive will apply temporal AQ using the specified strength. Disabled: MediaLive won't apply temporal AQ. If you have set the Adaptive quantization to Disabled, MediaLive ignores any value in this field and doesn't apply temporal AQ.
    public let temporalAq: H264TemporalAq?
    /// Determines how timecodes should be inserted into the video elementary stream.
    /// - 'disabled': Do not include timecodes
    /// - 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
    public let timecodeInsertion: H264TimecodeInsertionBehavior?

    public init (
        adaptiveQuantization: H264AdaptiveQuantization? = nil,
        afdSignaling: AfdSignaling? = nil,
        bitrate: Int = 0,
        bufFillPct: Int = 0,
        bufSize: Int = 0,
        colorMetadata: H264ColorMetadata? = nil,
        colorSpaceSettings: H264ColorSpaceSettings? = nil,
        entropyEncoding: H264EntropyEncoding? = nil,
        filterSettings: H264FilterSettings? = nil,
        fixedAfd: FixedAfd? = nil,
        flickerAq: H264FlickerAq? = nil,
        forceFieldPictures: H264ForceFieldPictures? = nil,
        framerateControl: H264FramerateControl? = nil,
        framerateDenominator: Int = 0,
        framerateNumerator: Int = 0,
        gopBReference: H264GopBReference? = nil,
        gopClosedCadence: Int = 0,
        gopNumBFrames: Int = 0,
        gopSize: Double = 0.0,
        gopSizeUnits: H264GopSizeUnits? = nil,
        level: H264Level? = nil,
        lookAheadRateControl: H264LookAheadRateControl? = nil,
        maxBitrate: Int = 0,
        minIInterval: Int = 0,
        numRefFrames: Int = 0,
        parControl: H264ParControl? = nil,
        parDenominator: Int = 0,
        parNumerator: Int = 0,
        profile: H264Profile? = nil,
        qualityLevel: H264QualityLevel? = nil,
        qvbrQualityLevel: Int = 0,
        rateControlMode: H264RateControlMode? = nil,
        scanType: H264ScanType? = nil,
        sceneChangeDetect: H264SceneChangeDetect? = nil,
        slices: Int = 0,
        softness: Int = 0,
        spatialAq: H264SpatialAq? = nil,
        subgopLength: H264SubGopLength? = nil,
        syntax: H264Syntax? = nil,
        temporalAq: H264TemporalAq? = nil,
        timecodeInsertion: H264TimecodeInsertionBehavior? = nil
    )
    {
        self.adaptiveQuantization = adaptiveQuantization
        self.afdSignaling = afdSignaling
        self.bitrate = bitrate
        self.bufFillPct = bufFillPct
        self.bufSize = bufSize
        self.colorMetadata = colorMetadata
        self.colorSpaceSettings = colorSpaceSettings
        self.entropyEncoding = entropyEncoding
        self.filterSettings = filterSettings
        self.fixedAfd = fixedAfd
        self.flickerAq = flickerAq
        self.forceFieldPictures = forceFieldPictures
        self.framerateControl = framerateControl
        self.framerateDenominator = framerateDenominator
        self.framerateNumerator = framerateNumerator
        self.gopBReference = gopBReference
        self.gopClosedCadence = gopClosedCadence
        self.gopNumBFrames = gopNumBFrames
        self.gopSize = gopSize
        self.gopSizeUnits = gopSizeUnits
        self.level = level
        self.lookAheadRateControl = lookAheadRateControl
        self.maxBitrate = maxBitrate
        self.minIInterval = minIInterval
        self.numRefFrames = numRefFrames
        self.parControl = parControl
        self.parDenominator = parDenominator
        self.parNumerator = parNumerator
        self.profile = profile
        self.qualityLevel = qualityLevel
        self.qvbrQualityLevel = qvbrQualityLevel
        self.rateControlMode = rateControlMode
        self.scanType = scanType
        self.sceneChangeDetect = sceneChangeDetect
        self.slices = slices
        self.softness = softness
        self.spatialAq = spatialAq
        self.subgopLength = subgopLength
        self.syntax = syntax
        self.temporalAq = temporalAq
        self.timecodeInsertion = timecodeInsertion
    }
}

extension H264Settings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "H264Settings(adaptiveQuantization: \(String(describing: adaptiveQuantization)), afdSignaling: \(String(describing: afdSignaling)), bitrate: \(String(describing: bitrate)), bufFillPct: \(String(describing: bufFillPct)), bufSize: \(String(describing: bufSize)), colorMetadata: \(String(describing: colorMetadata)), colorSpaceSettings: \(String(describing: colorSpaceSettings)), entropyEncoding: \(String(describing: entropyEncoding)), filterSettings: \(String(describing: filterSettings)), fixedAfd: \(String(describing: fixedAfd)), flickerAq: \(String(describing: flickerAq)), forceFieldPictures: \(String(describing: forceFieldPictures)), framerateControl: \(String(describing: framerateControl)), framerateDenominator: \(String(describing: framerateDenominator)), framerateNumerator: \(String(describing: framerateNumerator)), gopBReference: \(String(describing: gopBReference)), gopClosedCadence: \(String(describing: gopClosedCadence)), gopNumBFrames: \(String(describing: gopNumBFrames)), gopSize: \(String(describing: gopSize)), gopSizeUnits: \(String(describing: gopSizeUnits)), level: \(String(describing: level)), lookAheadRateControl: \(String(describing: lookAheadRateControl)), maxBitrate: \(String(describing: maxBitrate)), minIInterval: \(String(describing: minIInterval)), numRefFrames: \(String(describing: numRefFrames)), parControl: \(String(describing: parControl)), parDenominator: \(String(describing: parDenominator)), parNumerator: \(String(describing: parNumerator)), profile: \(String(describing: profile)), qualityLevel: \(String(describing: qualityLevel)), qvbrQualityLevel: \(String(describing: qvbrQualityLevel)), rateControlMode: \(String(describing: rateControlMode)), scanType: \(String(describing: scanType)), sceneChangeDetect: \(String(describing: sceneChangeDetect)), slices: \(String(describing: slices)), softness: \(String(describing: softness)), spatialAq: \(String(describing: spatialAq)), subgopLength: \(String(describing: subgopLength)), syntax: \(String(describing: syntax)), temporalAq: \(String(describing: temporalAq)), timecodeInsertion: \(String(describing: timecodeInsertion)))"}
}