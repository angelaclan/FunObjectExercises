Class {
	#name : #ComboSoldTest,
	#superclass : #SetUpTest,
	#category : #ExerciseObject4Stock
}

{ #category : #tests }
ComboSoldTest >> testCombo1haveSoldOne [
	| combo1 |
	book1 stockUnit: 15.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1  
		addProduct: book1;
		addProduct: book2.
		combo1 soldComboSet: 1.
	self assert: book1 stockUnit equals: 14.
	self assert: book2 stockUnit equals: 9
	
]

{ #category : #tests }
ComboSoldTest >> testCombo1haveSoldThree [
	| combo1 |
	book1 stockUnit: 15.
	book2 stockUnit: 10.
	combo1 := Combo new.
	combo1
		addProduct: book1;
		addProduct: book2.
	combo1 soldComboSet: 3.
	self assert: book1 stockUnit equals: 12.
	self assert: book2 stockUnit equals: 7
	
]

{ #category : #tests }
ComboSoldTest >> testCombo2haveSoldFive [
	| combo1 |
	book1 stockUnit: 15.
	electronic2 stockUnit: 10.
	combo1 := Combo new.
	combo1
		addProduct: book1;
		addProduct: electronic2.
	combo1 soldComboSet: 5.
	self assert: book1 stockUnit equals: 10.
	self assert: electronic2 stockUnit equals: 5
	
]

{ #category : #tests }
ComboSoldTest >> testCombo3CannotBeSold [
	| combo3 |
	electronic1 stockUnit: 0.
	electronic2 stockUnit: 10.
	combo3 := Combo new.
	combo3
		addProduct: electronic1;
		addProduct: electronic2.
		
	self should:[ combo3 soldComboSet: 1] raise: CannotSellACombo 
]
