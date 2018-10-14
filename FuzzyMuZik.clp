(clear)
(reset)
(import nrc.fuzzy.*)
(import nrc.fuzzy.jess.*)

(defglobal ?*decade* = (new nrc.fuzzy.FuzzyVariable "decade" 10.0 100.0 "User's decade preference"))
(defglobal ?*hiphop* = (new nrc.fuzzy.FuzzyVariable "hiphop" 1.0 5.0 "User's interest in Hip-Hop"))
(defglobal ?*metal* = (new nrc.fuzzy.FuzzyVariable "metal" 1.0 5.0 "User's interest in Metal"))
(defglobal ?*rap* = (new nrc.fuzzy.FuzzyVariable "rap" 1.0 5.0 "User's interest in Rap"))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r1" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r2" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r3" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r4" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r5" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r6" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r7" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r8" 1.0 5.0 ""))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r11" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r12" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r13" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r14" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r15" 1.0 5.0 ""))
(defglobal ?*poprecommendation* = (new nrc.fuzzy.FuzzyVariable "r16" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r17" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r18" 1.0 5.0 ""))

(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r21" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r22" 1.0 5.0 ""))
(defglobal ?*metalrecommendation* = (new nrc.fuzzy.FuzzyVariable "r23" 1.0 5.0 ""))

(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r24" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r25" 1.0 5.0 ""))
(defglobal ?*hiphoprecommendation* = (new nrc.fuzzy.FuzzyVariable "r26" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r27" 1.0 5.0 ""))
(defglobal ?*raprecommendation* = (new nrc.fuzzy.FuzzyVariable "r28" 1.0 5.0 ""))


(defrule init 
    =>
   	(load-package nrc.fuzzy.jess.FuzzyFunctions) 
    (?*decade* addTerm "latest" (create$ 10.0 25.0) (create$ 1.0 0.0) 2)
    (?*decade* addTerm "00s" (create$ 25.0 50.0) (create$ 1.0 0.0) 2)
    (?*decade* addTerm "90s" (create$ 50.0 100.0) (create$ 0.0 1.0) 2)

    
    (?*metal* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metal* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    (?*hiphop* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*hiphop* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    (?*rap* addTerm "low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*rap* addTerm "high" (create$ 2.5 5.0) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "latest-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "latest-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "latest-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "latest-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "latest-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "latest-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "latest-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "latest-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "90s-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "90s-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "90s-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "90s-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "90s-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "90s-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "90s-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "90s-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    
    (?*metalrecommendation* addTerm "00s-all-low" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*metalrecommendation* addTerm "00s-metal" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "00s-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "00s-rap-pop" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*raprecommendation* addTerm "00s-rap" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "00s-all-high" (create$ 2.5 5) (create$ 0.0 1.0) 2)
    (?*hiphoprecommendation* addTerm "00s-metal-pop" (create$ 1 2.5) (create$ 1.0 0.0) 2)
    (?*raprecommendation* addTerm "00s-metal-rap" (create$ 2.5 5) (create$ 0.0 1.0) 2)
   
    (assert (initialize))
    )

(defrule userScreen  
    (initialize)
    =>
    (printout t "Hey, my name is Mu Zik and I will help you discover new songs based on your interests." crlf)
    (printout t "Let's get to know you more. What is your name? " crlf)
    (bind ?name (readline))
    (printout t crlf " " crlf)
    (printout t " Hello, " ?name "." crlf)
    (printout t " " crlf crlf)
	(printout t "What decade of music are you interested in listening to? "crlf)
    (printout t "(Enter "latest" for latest songs, "00s" for 2000s music, "90s" for 1990s music.)"  crlf)
	(bind ?tf (readline))
    (printout t "What is the level of your interest in listening to Metal genre? (high/low)" crlf)
    (bind ?met (readline))
    (printout t "What is the level of your interest in listening to Hip-Hop music? (high/low)" crlf)
    (bind ?pop (readline))
    (printout t "What is the level of your interest in listening to Rap music? (high/low)" crlf)
    (bind ?rap (readline))
    (printout t "What is the level of your interest in listening to Classical music? (high/low)" crlf)
    (bind ?cla (readline))
	(assert (decade (new nrc.fuzzy.FuzzyValue ?*decade* ?tf)))
    (assert (metal (new nrc.fuzzy.FuzzyValue ?*metal* ?met)))
    (assert (hiphop (new nrc.fuzzy.FuzzyValue ?*hiphop* ?pop)))
    (assert (rap (new nrc.fuzzy.FuzzyValue ?*rap* ?rap))))


(defrule rule1  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r1 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "latest-all-low")))
    )
(defrule rule2  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r2 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "latest-pop")))
    )

(defrule rule3  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r3 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "latest-metal")))
    )

(defrule rule4  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r4 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "latest-rap")))
    )
 
(defrule rule5  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r5 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "latest-rap-pop")))
    )

(defrule rule6   
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r6 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "latest-metal-pop")))
    )

(defrule rule7  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r7 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "latest-metal-rap")))
    )

(defrule rule8  
    (decade ?a&:(fuzzy-match ?a "latest"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r8 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "latest-all-high")))
    )

(defrule rule11  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r11 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "90s-all-low")))
    )
(defrule rule12  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r12 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "90s-pop")))
    )

(defrule rule13  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r13 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "90s-metal")))
    )

(defrule rule14  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r14 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "90s-rap")))
    )

(defrule rule15  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r15 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "90s-rap-pop")))
    )

(defrule rule16  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r16 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "90s-metal-pop")))
    )

(defrule rule17  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r17 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "90s-metal-rap")))
    )

(defrule rule18  
    (decade ?a&:(fuzzy-match ?a "90s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r18 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "90s-all-high")))
    )

(defrule rule21  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r21 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "00s-all-low")))
    )
(defrule rule22  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r22 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "00s-pop")))
    )

(defrule rule23  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r23 (new nrc.fuzzy.FuzzyValue ?*metalrecommendation* "00s-metal")))
    )

(defrule rule24  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r24 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "00s-rap")))
    )

(defrule rule25  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "low"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r25 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "00s-rap-pop")))
    )

(defrule rule26  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "low"))
    =>
    (assert (r26 (new nrc.fuzzy.FuzzyValue ?*poprecommendation* "00s-metal-pop")))
    )

(defrule rule27  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "low"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r27 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "00s-metal-rap")))
    )

(defrule rule28  
    (decade ?a&:(fuzzy-match ?a "00s"))
    (hiphop ?c&:(fuzzy-match ?c "high"))
    (metal ?d&:(fuzzy-match ?d "high"))
    (rap ?r&:(fuzzy-match ?r "high"))
    =>
    (assert (r28 (new nrc.fuzzy.FuzzyValue ?*raprecommendation* "00s-all-high")))
    )

(defrule Recommendation1  
    (r1 ?i&:(fuzzy-match ?i "latest-all-low"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Love is blue"
        crlf "Artist: Paul Mauriat" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik"))

(defrule Recommendation2  
    (r2 ?i&:(fuzzy-match ?i "latest-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Congratulations"
        crlf "Artist: Post Malone" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik"))

(defrule Recommendation3  
    (r3 ?i&:(fuzzy-match ?i "latest-metal"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Moth into flame"
        crlf "Artist: Metallica" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik"))

(defrule Recommendation4  
    (r4 ?i&:(fuzzy-match ?i "latest-rap"))
    =>
     (printout t crlf "Here's your song recommendation:" 
        crlf "Song: 31 Days"
        crlf "Artist: Future" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik"))
 
(defrule Recommendation5  
    (r5 ?i&:(fuzzy-match ?i "latest-rap-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Aries"
        crlf "Artist: Rae Sremmurd" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik"))

(defrule Recommendation6 

    (r6 ?i&:(fuzzy-match ?i "latest-metal-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Knocking on heaven's doors"
        crlf "Artist: Guns 'n' Roses" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik.")
    )

(defrule Recommendation7 

    (r7 ?i&:(fuzzy-match ?i "latest-metal-rap"))
    =>
        (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Goddamn Trouble"
        crlf "Artist: Overkill" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation8 

    (r8 ?i&:(fuzzy-match ?i "latest-all-high"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: My dear melocholy"
        crlf "Artist: The Weeknd" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation11 

    (r11 ?i&:(fuzzy-match ?i "90s-all-low"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Waterfalls"
        crlf "Artist: TLC" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation12 

    (r12 ?i&:(fuzzy-match ?i "90s-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Regulate"
        crlf "Artist: Warren G." crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation13 

    (r13 ?i&:(fuzzy-match ?i "90s-metal"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Sad but true"
        crlf "Artist: Metallica" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation14 

    (r14 ?i&:(fuzzy-match ?i "90s-rap"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: All I need"
        crlf "Artist: Method Man" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation15 

    (r15 ?i&:(fuzzy-match ?i "90s-rap-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: All eyes on me"
        crlf "Artist: 2PAC" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation16 

    (r16 ?i&:(fuzzy-match ?i "90s-metal-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Motorhead"
        crlf "Artist: Motorhead" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation17 

    (r17 ?i&:(fuzzy-match ?i "90s-metal-rap"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Leviathan"
        crlf "Artist: Mastodon" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation18 

    (r18 ?i&:(fuzzy-match ?i "90s-all-high"))
    =>
   (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Illmatic"
        crlf "Artist: NAS" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation21 

    (r21 ?i&:(fuzzy-match ?i "00s-all-low"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Your hand in mine"
        crlf "Artist: Black Emperor" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation22 

    (r22 ?i&:(fuzzy-match ?i "00s-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: P.S.A."
        crlf "Artist: Jay-Z" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommenadtion23 

    (r23 ?i&:(fuzzy-match ?i "00s-metal"))
    =>
   (printout t crlf "Here's your song recommendation:" 
        crlf "Song: In the end"
        crlf "Artist: Linkin Park" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation24 

    (r24 ?i&:(fuzzy-match ?i "00s-rap"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Get by"
        crlf "Artist: Jay-Z and Kanye" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation25 

    (r25 ?i&:(fuzzy-match ?i "00s-rap-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Chicken-n-Beer"
        crlf "Artist: Ludacris" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation26 

    (r26 ?i&:(fuzzy-match ?i "00s-metal-pop"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Chop-Suey!"
        crlf "Artist: System of a down" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation27 

    (r27 ?i&:(fuzzy-match ?i "00s-metal-rap"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: Numb"
        crlf "Artist: Linkin Park" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(defrule Recommendation28 

    (r28 ?i&:(fuzzy-match ?i "00s-all-high"))
    =>
    (printout t crlf "Here's your song recommendation:" 
        crlf "Song: The blueprint"
        crlf "Artist: Jay-Z" crlf
        crlf "Enjoy your song! Hope you liked the music suggested by Mu Zik")
    )

(run)