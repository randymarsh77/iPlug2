import CoreAudioKit
import DankKnobFramework

extension DankKnobViewController: AUAudioUnitFactory {

  public override func beginRequest(with context: NSExtensionContext) { }
  
  public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
    audioUnit = try IPlugAUAudioUnit(componentDescription: componentDescription, options: [])
    return audioUnit!
  }
}
