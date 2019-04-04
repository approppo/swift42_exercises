import AVFoundation
import PlaygroundSupport

let synthesizer = AVSpeechSynthesizer()

func say(english: String) {
    let utterance = AVSpeechUtterance(string: english)
    synthesizer.speak(utterance)
}

func say(german: String) {
    let utterance = AVSpeechUtterance(string: german)
    utterance.voice = AVSpeechSynthesisVoice(language: "de-CH")
    synthesizer.speak(utterance)
}

func say(french: String) {
    let utterance = AVSpeechUtterance(string: french)
    utterance.voice = AVSpeechSynthesisVoice(language: "fr-CH")
    synthesizer.speak(utterance)
}

func say(italian: String) {
    let utterance = AVSpeechUtterance(string: italian)
    utterance.voice = AVSpeechSynthesisVoice(language: "it-CH")
    synthesizer.speak(utterance)
}

func say(_ text: String) {
    say(english: text)
}

func sagen(_ text: String) {
    say(german: text)
}

func parler(_ text: String) {
    say(french: text)
}

func dire(_ text: String) {
    say(italian: text)
}

func say(_ babble: String ...) {
    for thing in babble {
        say(thing)
    }
}

func greet(name: String) -> String {
    return "Hello \(name)!"
}

//say(english: "Hello Switzerland! I am a computer.")
//say(german: "Hallo die Schweiz! Ich bin ein computer.")
//parler("Bonjour la Suisse! Je suis un ordinateur.")
//dire("Bongiorno la Svizzera! Mi piace tantissimo essere con voi oggi.")
//say("Boom boom, this is fun!")
//say("Hi", "my", "name", "is", "Martha")

let greeting = greet(name: "Roger")
print(greeting)
say(greeting)

PlaygroundPage.current.needsIndefiniteExecution = true

