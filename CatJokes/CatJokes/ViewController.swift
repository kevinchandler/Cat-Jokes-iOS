//
//  ViewController.swift
//  CatJokes
//
//  Created by Kevin on 5/1/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCatJoke()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func setCatJoke() {
        let joke = getCatJoke()
        questionLabel.text = joke["question"]
        answerLabel.layer.opacity = 0
        self.answerLabel.text = joke["answer"]
        UIView.animateWithDuration(3, delay: 2, options: [], animations: {
            self.answerLabel.layer.opacity = 1
        }) { (finished) in
        }

    }
    
    
    
    
    func getCatJoke() -> [String:String] {
        let index: Int = Int(arc4random_uniform(UInt32(catJokes.count)))
        return catJokes[index]
    }

    let catJokes = [
        [
            "question": "Can a cat play patty-cake?",
            "answer": "Pawsibly!"
        ],
        [
            "question": "Why was the cat so small?",
            "answer": "Because it only drank condensed milk!"
        ],
        [
            "question": "Why is the cat so grouchy?",
            "answer": "Because he's in a bad mewd."
        ],
        [
            "question": "What happened when the cat swallowed a coin?",
            "answer": "There was some money in the kitty!"
        ],
        [
            "question": "Why do you always find the cat in the last place you look?",
            "answer": "Because you stop looking after you find it."
        ],
        [
            "question": "Why do people love cats?",
            "answer": "Because they are purrrrr-fect!"
        ],
        [
            "question": "Why do cats chase birds?",
            "answer": "For a lark!"
        ],
        [
            "question": "Why did the litter of communist kittens become capitalists?",
            "answer": "Because they finally opened their eyes."
        ],
        [
            "question": "Why did the judge dismiss the entire jury made up of cats?",
            "answer": "Because each of them was guilty of purrjury."
        ],
        [
            "question": "Why did the cat sleep under the car?",
            "answer": "Because she wanted to wake up oily!"
        ],
        [
            "question": "Why did the cat run from the tree?",
            "answer": "Because it was afraid of the bark!"
        ],
        [
            "question": "Why did the cat put the letter 'M' into the fridge?",
            "answer": "Because it turns 'ice' into 'mice'!"
        ],
        [
            "question": "Because she wanted to be a first-aid kit!",
            "answer": "Why did the cat join the Red Cross?"
        ],
        [
            "question": "Why did the cat frown when she passed the hen house?",
            "answer": "Because she heard fowl language!"
        ],
        [
            "question": "Why did the cat cross the road?",
            "answer": "It was the chicken's day off!"
        ],
        [
            "question": "Why did a person with an unspayed female cat have to go to court?",
            "answer": "For kitty littering."
        ],
        [
            "question": "Why are cats such good singers?",
            "answer": "Because they're very mewsical."
        ],
        [
            "question": "Why are cats better than babies?",
            "answer": "Because you only have to change a litter box once a day."
        ],
        [
            "question": "Why are cats longer in the evening than they are in the morning?",
            "answer": "Because they're let out in the evening and taken in in the morning!"
        ],
        [
            "question": "Who was the most powerful cat in China?",
            "answer": "Chairman Miaow!"
        ],
        [
            "question": "Who helped Cinderella's cat go to the ball?",
            "answer": "Her furry godmother!"
        ],
        [
            "question": "Which side of a cat has more hair?",
            "answer": "The outside, of course!"
        ],
        [
            "question": "Which is the cats' all-time favorite song?",
            "answer": "Three Blind Mice."
        ],
        [
            "question": "Where is one place that your cat can sit, but you can't?",
            "answer": "Your lap."
        ],
        [
            "question": "Where does a cat go when it loses its tail?",
            "answer": "The retail store."
        ],
        [
            "question": "What's the unluckiest kind of cat to have?",
            "answer": "A catastrophe!"
        ],
        [
            "question": "What's a cat's favorite dessert?",
            "answer": "Chocolate mouse!"
        ],
    ]
}

