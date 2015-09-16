*Wonka-Magritte-Dynamic-Core
visible
	"Answer ==true== if the model described by the receiver is visible, as an opposite to hidden."

	^(self propertyAt: #visible ifAbsent: [ self class defaultVisible ]) value
