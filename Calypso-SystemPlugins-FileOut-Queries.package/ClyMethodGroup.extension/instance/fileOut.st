*Calypso-SystemPlugins-FileOut-Queries
fileOut
	| internalStream class |
	internalStream := (String new: 1000) writeStream.
	internalStream header; timeStamp; cr.
	self methods do: [:each |
		each origin printMethodChunk: each selector on: internalStream ].
	internalStream trailer.
	class := methodQuery scope basisObjects anyOne.
	^ FileStream writeSourceCodeFrom: internalStream baseName: (class name , '-' , self name) isSt: true.