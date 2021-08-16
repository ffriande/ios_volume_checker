import Flutter
import UIKit
import Foundation
import AVFoundation

public class SwiftIosVolumeCheckerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "ios_volume_checker", binaryMessenger: registrar.messenger())
    let instance = SwiftIosVolumeCheckerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method.elementsEqual("getVolume")) {
      let audioSession = AVAudioSession.sharedInstance()
      var volume: Float?
      do {
          try audioSession.setActive(true)
          volume = audioSession.outputVolume
          result(volume)
      } catch {
          print("Error Setting Up Audio Session")
      }
    }
  }
}
