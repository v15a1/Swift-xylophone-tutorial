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
        
        
        //BOSS CHALLENGE
        
        //changing the opacity
        sender.alpha = 0.5
        
        //printing "Hello" after 2 seconds
        print("Hello")
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            print("Hello after 2 seconds")
        }
        
        //resetting opacity of the button after clicking
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            sender.alpha = 1
        })
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

