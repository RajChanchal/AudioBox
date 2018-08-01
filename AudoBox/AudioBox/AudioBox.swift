//
//  AudioBox.swift
//  AudoBox
//
//  Created by Chanchal Raj on 31/07/2018.
//  Copyright © 2018 Chanchal Raj. All rights reserved.
//

import Foundation
import AVFoundation

protocol AudioBoxDelegate{
    func audioBoxStateDidChange(jukebox : AudioBox)
}
class AudioBox{
    enum State {
        case playing
        case ready
        case paused
        case loading
        case failed
    }
    private var player:AVPlayer?
    var delegate:AudioBoxDelegate?
    var state:State = .ready{
        didSet{
            delegate?.audioBoxStateDidChange(jukebox: self)
        }
    }
    var tracks:[AudioBoxTrack]?
    var volume:Float{
        get{
            return player?.volume ?? 0
        }
        set{
            player?.volume = newValue
        }
    }
}
