//
//  ExerciseType.swift
//  FitStatistic
//
//  Created by Zdenko Čepan on 27.09.2023.
//

import Foundation

struct Exercises: Hashable {
    var name: String
    var type: ExerciseType
    // let info: String
    // let img: String
}

extension Exercises {
    static let exercises: [Exercises] = [
        Exercises(name: "Krčenie ramien s veľkou činkou", type: .trapeze),
        Exercises(name: "Krčenie ramien s jednoručkami", type: .trapeze),
        Exercises(name: "Dvíhanie činky k brade", type: .trapeze),
        Exercises(name: "Príťahy spodnej kladky v sede", type: .trapeze),
        Exercises(name: "Tlaky nad hlavu", type: .shoulders),
        Exercises(name: "Príťahy k brade", type: .shoulders),
        Exercises(name: "Upažovanie v predklone", type: .shoulders),
        Exercises(name: "Upažovanie s jednoručkami", type: .shoulders),
        Exercises(name: "Predpažovanie", type: .shoulders),
        Exercises(name: "Sťahovanie kladky", type: .triceps),
        Exercises(name: "Kliky na bradlách", type: .triceps),
        Exercises(name: "Tricepsové tlaky v ľahu na lavičke", type: .triceps),
        Exercises(name: "Benchpress úzkym úchopom", type: .triceps),
        Exercises(name: "Kickback s jednoručkou", type: .triceps),
        Exercises(name: "Kliky na bradlách", type: .chest),
        Exercises(name: "Cvičenie na protismerných kladkách", type: .chest),
        Exercises(name: "Cvičenie na protismerných spodných kladkách", type: .chest),
        Exercises(name: "Benchpress", type: .chest),
        Exercises(name: "Tlaky s jednoručkami", type: .chest),
        Exercises(name: "Rozpažovanie na lavičke", type: .chest),
        Exercises(name: "Pec-deck", type: .chest),
        Exercises(name: "Kladivové zdvihy na lavičke", type: .biceps),
        Exercises(name: "Bicepsové zdvihy v stoji", type: .biceps),
        Exercises(name: "Bicepsový zdvih v sede", type: .biceps),
        Exercises(name: "Bicepsový zdvih nadhmatom", type: .forearm),
        Exercises(name: "Zdvíhanie zápästia s opretím rúk", type: .forearm),
        Exercises(name: "Kladivové zdvihy", type: .forearm),
        Exercises(name: "Dvíhanie nôh na lavičke", type: .abdomen),
        Exercises(name: "Brušné sťahovanie hornej kladky", type: .abdomen),
        Exercises(name: "Skracovačky", type: .abdomen),
        Exercises(name: "Dvíhanie nôh na rovnej ploche", type: .abdomen),
        Exercises(name: "Sedy a ľahy na lavičke", type: .abdomen),
        Exercises(name: "Sedy a ľahy na lavičke s vytáčaním", type: .abdomen),
        Exercises(name: "Príťahy kolien k brade", type: .abdomen),
        Exercises(name: "Dvíhanie nôh vo vise", type: .abdomen),
        Exercises(name: "Bočný úklon", type: .abdomen),
        Exercises(name: "Bočné skracovačky", type: .abdomen),
        Exercises(name: "Bočné sťahovanie kladky", type: .abdomen),
        Exercises(name: "Predkopávanie", type: .thighs),
        Exercises(name: "Výpady", type: .thighs),
        Exercises(name: "Drep", type: .thighs),
        Exercises(name: "Drep na stroji", type: .thighs),
        Exercises(name: "Tlaky nohami", type: .thighs),
        Exercises(name: "Výpony v sede", type: .calfs),
        Exercises(name: "Výpony na stroji", type: .calfs),
        Exercises(name: "Výpony v stoji", type: .calfs),
        Exercises(name: "Zhyby", type: .dorsum),
        Exercises(name: "Príťahy spodnej kladky v sede", type: .dorsum),
        Exercises(name: "Príťahy činky v predklone", type: .dorsum),
        Exercises(name: "Príťahy jednoručky v predklone", type: .dorsum),
        Exercises(name: "Príťahy kladky", type: .dorsum),
        Exercises(name: "Sťahovanie kladky podhmatom na úzko", type: .dorsum),
        Exercises(name: "Mŕtvy ťah s vystretými nohami", type: .clubs),
        Exercises(name: "Hyperextenzie", type: .clubs),
        Exercises(name: "Klasický mŕtvy ťah", type: .clubs),
        Exercises(name: "Mŕtvy ťah s vystretými nohami", type: .gluteus),
        Exercises(name: "Hyperextenzie", type: .gluteus),
        Exercises(name: "Drep", type: .gluteus),
        Exercises(name: "Výpady", type: .gluteus),
        Exercises(name: "Zakopávanie", type: .hamstring),
        Exercises(name: "Cvičenie na stroji v predklone", type: .hamstring),
        Exercises(name: "Mŕtvy ťah s vystretými nohami", type: .hamstring),
        Exercises(name: "Hyperextenzie", type: .hamstring)
    ]
}
