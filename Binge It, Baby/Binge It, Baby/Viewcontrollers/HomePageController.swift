//
//  HomePageController.swift
//  Binge It, Baby
//
//  Created by Marissa Gonzales on 4/26/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import Foundation
import UIKit


protocol MovieDetailDelegate {
    
    func movieWasSelected(_ movie: Movie)
}

class HomePageController {

    public var movieList: [Movie] = [

        Movie(name: "Frozen", genre: "Animated", releasedYear: 2013, rating: "4.5", cast: ["Kristen Bell", "Idina Menzel", "Johnathan Groff"], userIsWatching: false, image: #imageLiteral(resourceName: "Frozen"), synopsis: "Fearless optimist Anna teams up with rugged mountain man Kristoff and his loyal reindeer Sven and sets off on an epic journey to find her sister Elsa, whose icy powers have trapped the kingdom of Arendelle in eternal winter. Encountering Everest-like conditions, mystical trolls and a hilarious snowman named Olaf, Anna and Kristoff battle the elements in a race to save the kingdom. From the outside Elsa looks poised, regal and reserved, but in reality she lives in fear as she wrestles with a mighty secret: she was born with the power to create ice and snow. It's a beautiful ability, but also extremely dangerous. Haunted by the moment her magic nearly killed her younger sister Anna, Elsa has isolated herself, spending every waking minute trying to suppress her growing powers. Her mounting emotions trigger the magic, accidentally setting off an eternal winter that she can't stop. She fears she's becoming a monster and that no one, not even her sister, can help her."),
        
        Movie(name: "Superbad", genre: "Comedy", releasedYear: 2007, rating: "4.3", cast: ["Jonah Hill", "Micheal Cera", "Seth Rogen", "Christopher Mintz-Plasse"], userIsWatching: false, image: #imageLiteral(resourceName: "SuperBad"), synopsis: "Seth and Evan are best friends, inseparable, navigating the last weeks of high school. Usually shunned by the popular kids, Seth and Evan luck into an invitation to a party, and spend a long day, with the help of their nerdy friend Fogell, trying to score enough alcohol to lubricate the party and inebriate two girls, Jules and Becca, so they can kick-start their sex lives and go off to college with a summer full of experience and new skills. Their quest is complicated by Fogell's falling in with two inept cops who both slow and assist the plan. If they do get the liquor to the party, what then? Is sex the only rite of passage at hand?"),
        
        Movie(name: "Forest Gump", genre: "Drama", releasedYear: 1999, rating: "4.8", cast: ["Tom Hanks", "Robin Wright", "Gary Sinise"], userIsWatching: false,image: #imageLiteral(resourceName: "Forest Gump"), synopsis: "Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His 'mama' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone."),
 
        Movie(name: "Hereditary", genre: "Horror", releasedYear: 2018, rating: "4.9", cast: ["Toni Collette", "Millary Shapiro", "Gabriel Byrne"], userIsWatching: false, image: #imageLiteral(resourceName: "Hereditary"), synopsis: "When her mentally ill mother passes away, a woman named Annie (Toni Collette) and her husband (Gabriel Byrne), son (Alex Wolff) and daughter (Milly Shapiro) all mourn her loss. The family turn to different means to handle their grief, including Annie and her daughter both flirting with the supernatural. They each begin to have disturbing, otherworldly experiences linked to the sinister secrets and emotional trauma that have been passed through the generations of their family."),
        
        Movie(name: "Iron Man", genre: "Action", releasedYear: 2008, rating: "4.2", cast: ["Robert Downey Jr.", "Gwyneth Paltrow", "Terrence Howard"], userIsWatching: true, image: #imageLiteral(resourceName: "IronMan"), synopsis: "Tony Stark. Genius, billionaire, playboy, philanthropist. Son of legendary inventor and weapons contractor Howard Stark. When Tony Stark is assigned to give a weapons presentation to an Iraqi unit led by Lt. Col. James Rhodes, he's given a ride on enemy lines. That ride ends badly when Stark's Humvee that he's riding in is attacked by enemy combatants. He survives - barely - with a chest full of shrapnel and a car battery attached to his heart. In order to survive he comes up with a way to miniaturize the battery and figures out that the battery can power something else. Thus Iron Man is born. He uses the primitive device to escape from the cave in Iraq. Once back home, he then begins work on perfecting the Iron Man suit. But the man who was put in charge of Stark Industries has plans of his own to take over Tony's technology for other matters."),

        Movie(name: "Saving Private Ryan", genre: "Drama", releasedYear: 1998, rating: "5.0", cast: ["Tom Hanks", "Matt Damon", "Tom Sizemore"], userIsWatching: true, image: #imageLiteral(resourceName: "SavingPrivateRyan"), synopsis: "Opening with the Allied invasion of Normandy on 6 June 1944, members of the 2nd Ranger Battalion under Cpt. Miller fight ashore to secure a beachhead. Amidst the fighting, two brothers are killed in action. Earlier in New Guinea, a third brother is KIA. Their mother, Mrs. Ryan, is to receive all three of the grave telegrams on the same day. The United States Army Chief of Staff, George C. Marshall, is given an opportunity to alleviate some of her grief when he learns of a fourth brother, Private James Ryan, and decides to send out 8 men (Cpt. Miller and select members from 2nd Rangers) to find him and bring him back home to his mother.")
    ]

    
    
    var movieAddedList: [Movie] = []
    
    

    
    
    
    
//    //Basic Persistence
//
//    var movieListURL: URL? {
//
//        let fileManager = FileManager.default
//
//        // Grab apps document directory
//
//        let documentsDir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
//
//        // Create plist
//
//        let moviePlist = documentsDir?.appendingPathComponent("MovieList.plist")
//
//        return moviePlist
//    }
//
//    func saveToPersistenceStore() {
//
//        do {
//            // Encode data
//            let encoder = PropertyListEncoder()
//
//            let moviePlist = try encoder.encode(movies)
//
//            guard let movieListURL = movieListURL else { return }
//
//            try moviePlist.write(to: movieListURL)
//
//        } catch let saveError {
//
//            print("Error saving movies: \(saveError)")
//        }
//    }
//
//    mutating func loadToPersistenceStore() {
//
//        guard let movieListURL = movieListURL else { return }
//
//        do {
//
//            let decoder = PropertyListDecoder()
//
//            let moviesURL = try Data(contentsOf: movieListURL)
//
//            let movies = try decoder.decode([Movie].self, from: moviesURL)
//
//            self.movies = movies
//
//        } catch {
//            print("Error decoding movies: \(error)")
//
//        }
//    }
}
