//
//  AudioBoxTrack.swift
//  AudoBox
//
//  Created by Chanchal Raj on 31/07/2018.
//  Copyright © 2018 Chanchal Raj. All rights reserved.
//

import Foundation
import AVFoundation
protocol AudioBoxTrackDelegate : class {
    func audioBoxTrackDidLoadPlayerItem(_ item: AudioBoxTrack)
    func audioBoxTrackDidUpdate(_ item: AudioBoxTrack)
    func audioBoxTrackDidFail(_ item: AudioBoxTrack)
}
class AudioBoxTrack:AVPlayerItem{
    
}
