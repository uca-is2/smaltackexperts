"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #RandomDeck,
	#superclass : #Object,
	#category : #'IngSoft2-Model'
}

{ #category : #update }
RandomDeck >> dealCards [
	| cardsClasses cards |
	cardsClasses := (Card subclasses) asArray.
		cards := OrderedCollection new.
		cards add: (cardsClasses at: (Random new nextInt: 6)) new.
		cards add: (cardsClasses at: (Random new nextInt: 6)) new.
	^ cards.
]

{ #category : #update }
RandomDeck >> dealOneCard [
	| card cardsClasses |
	cardsClasses := (Card subclasses) asArray.
	card := (cardsClasses at: (Random new nextInt: 6)) new.
	^ card.
]
