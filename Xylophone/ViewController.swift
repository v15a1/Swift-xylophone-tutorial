import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func keyCPressed(_ sender: UIButton) {
        //getting the button label
        let buttonLabel : String = sender.currentTitle!
        //passing the value to the playsound function
        playSound(soundName: buttonLabel)
    }
    
    //function to play the sound
    func playSound(soundName: String){
        //https://www.hackingwithswift.com/example-code/media/how-to-play-sounds-using-avaudioplayer
        let soundPath = Bundle.main.path(forResource: "\(soundName).wav", ofType: nil)!
        let url = URL(fileURLWithPath: soundPath)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.play()
//            print("played the sound")
        } catch {
            print("Failed to play the sound")
        }
    }
}

