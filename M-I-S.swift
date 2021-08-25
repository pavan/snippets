/* Class library for collecting, processing and presenting information
 Author: Pavan Gunupudi 2012 (c) Copyright; All rights reserved.
 License: BSD
 */

class Information {
    let rawData: String
    let description: String
    
    init(description:String, rawData: String) {
        self.description = description
        self.rawData = rawData
    }
    
    func simpleDescription() {
        print("Brief info about data: ", description)
        print("Full data: ", rawData)
    }
}

class Knowledge {
    let edict: String
    let info: [Information]

    init(edict:String, info: [Information]) {
        self.edict = edict
        self.info = info
    }
    
    func simpleDescription() {
        for information in info {
            print(information.simpleDescription())
        }
        print(edict)
    }
}

class Meaning {
    let statementInQuestion: String
    let information: [Information]
    let priorKnowledge: Knowledge
    var analyzedMeaning: String? = nil
    var zeitgeistMeaning: String? = nil
    
    init(statement: String, information: [Information], priorKnowledge: Knowledge) {
        self.statementInQuestion = statement
        self.information = information
        self.priorKnowledge = priorKnowledge
    }
    
    func simpleDescription() {
        print("Statement in Question: \(statementInQuestion)")
        print("Meaning:", analyzedMeaning)
    }
}

let moonInfo = Information(description: "Something about our moon", 
                           rawData: "It's spherical of course, but in addition, made contact with an old civilization there that cut contacts with Earth long time ago")

let spaceInfo = Information(description: "One of the first space travels",
                            rawData: "Yuri Gagaran, a Russian cosmonaut, was the first human being to circumnavigate the earth using a space-craft")

let knowHow = Knowledge(edict: "There is a lot to know about space!!.", info: [moonInfo, spaceInfo])

print(knowHow.simpleDescription())

let questForMeaning = Meaning(statement: "Did we go to space before?", information: knowHow.info, priorKnowledge: knowHow)
questForMeaning.analyzedMeaning = "Yes we did!!"
questForMeaning.zeitgeistMeaning = "No we didn't!!"

print(questForMeaning.simpleDescription())
