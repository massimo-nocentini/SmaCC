Class {
	#name : #JSVariableDeclarationNode,
	#superclass : #JSProgramNode,
	#instVars : [
		'variable',
		'equalToken',
		'value',
		'decorators',
		'colonToken',
		'type',
		'modifier',
		'questionMarkToken',
		'name'
	],
	#category : #'SmaCC_Javascript_Parser'
}

{ #category : #generated }
JSVariableDeclarationNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitVariableDeclaration: self
]

{ #category : #generated }
JSVariableDeclarationNode >> colonToken [
	^ colonToken
]

{ #category : #generated }
JSVariableDeclarationNode >> colonToken: aSmaCCToken [
	colonToken := aSmaCCToken
]

{ #category : #generated }
JSVariableDeclarationNode >> compositeNodeVariables [
	^ #(#decorators)
]

{ #category : #generated }
JSVariableDeclarationNode >> decorators [
	^ decorators
]

{ #category : #generated }
JSVariableDeclarationNode >> decorators: anOrderedCollection [
	self setParents: self decorators to: nil.
	decorators := anOrderedCollection.
	self setParents: self decorators to: self
]

{ #category : #generated }
JSVariableDeclarationNode >> equalToken [
	^ equalToken
]

{ #category : #generated }
JSVariableDeclarationNode >> equalToken: aSmaCCToken [
	equalToken := aSmaCCToken
]

{ #category : #generated }
JSVariableDeclarationNode >> ignoredTokenVariables [
	^ #(#colonToken)
]

{ #category : #'generated-initialize-release' }
JSVariableDeclarationNode >> initialize [
	super initialize.
	decorators := OrderedCollection new: 2.
]

{ #category : #generated }
JSVariableDeclarationNode >> modifier [
	^ modifier
]

{ #category : #generated }
JSVariableDeclarationNode >> modifier: aSmaCCToken [
	modifier := aSmaCCToken
]

{ #category : #generated }
JSVariableDeclarationNode >> name [
	^ name
]

{ #category : #generated }
JSVariableDeclarationNode >> name: aJSNameExpressionNode [
	self name notNil ifTrue: [ self name parent: nil ].
	name := aJSNameExpressionNode.
	self name notNil ifTrue: [ self name parent: self ]
]

{ #category : #generated }
JSVariableDeclarationNode >> nodeVariables [
	^ #(#variable #value #type #name)
]

{ #category : #generated }
JSVariableDeclarationNode >> questionMarkToken [
	^ questionMarkToken
]

{ #category : #generated }
JSVariableDeclarationNode >> questionMarkToken: aSmaCCToken [
	questionMarkToken := aSmaCCToken
]

{ #category : #generated }
JSVariableDeclarationNode >> tokenVariables [
	^ #(#equalToken #modifier #questionMarkToken)
]

{ #category : #generated }
JSVariableDeclarationNode >> type [
	^ type
]

{ #category : #generated }
JSVariableDeclarationNode >> type: aJSTypeNode [
	self type notNil ifTrue: [ self type parent: nil ].
	type := aJSTypeNode.
	self type notNil ifTrue: [ self type parent: self ]
]

{ #category : #generated }
JSVariableDeclarationNode >> value [
	^ value
]

{ #category : #generated }
JSVariableDeclarationNode >> value: aJSExpressionNode [
	self value notNil ifTrue: [ self value parent: nil ].
	value := aJSExpressionNode.
	self value notNil ifTrue: [ self value parent: self ]
]

{ #category : #generated }
JSVariableDeclarationNode >> variable [
	^ variable
]

{ #category : #generated }
JSVariableDeclarationNode >> variable: aJSProgramNode [
	self variable notNil ifTrue: [ self variable parent: nil ].
	variable := aJSProgramNode.
	self variable notNil ifTrue: [ self variable parent: self ]
]
