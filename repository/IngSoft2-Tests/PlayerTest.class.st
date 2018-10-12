Class {
	#name : #PlayerTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
PlayerTest >> testAPlayerRollDicesAndMoveForwards [
	| dice1 dice2 pedro dices board |
	dice1 := DeterministicDice withFaces: 8.
	dice2 := DeterministicDice withFaces: 6.
	pedro := Player withName: 'Pedro'.
	board := Board withSlots: 30.
	dices := OrderedCollection new.
	dices
		add: dice1;
		add: dice2.
	pedro rollDices: dices on: board.
	self assert: pedro position equals: 14.
	pedro rollDices: dices on: board.
	self assert: pedro position equals: 26.
]

{ #category : #tests }
PlayerTest >> testCreatePlayer [
	| pepito |
	pepito := Player withName: 'Pepito'.
	self  assert: pepito name equals: 'Pepito';
			assert: pepito position equals: 0;
			assert: pepito lap equals: 1.
]

{ #category : #tests }
PlayerTest >> testMovePositionOfPlayer [
	| john board |
	john := Player withName: 'John'.
	board := Board withSlots: 20.
	john moveForward: 10 on: board.
	self assert: john position equals: 10.
	john moveForward: 4 on: board.
	self assert: john position equals: 14
]

{ #category : #tests }
PlayerTest >> testRollDicesTwoTimes [
	| dice1 dice2 pedro dices board |
	dice1 := DeterministicDice withFaces: 6.
	dice2 := DeterministicDice withFaces: 8.
	pedro := Player withName: 'Pedro'.
	board := Board withSlots: 30.
	dices := OrderedCollection new.
	dices
		add: dice1;
		add: dice2.
	pedro rollDices: dices on: board.
	self assert: pedro position equals: 14.
	pedro rollDices: dices on: board.
	self assert: pedro position equals: 26
]