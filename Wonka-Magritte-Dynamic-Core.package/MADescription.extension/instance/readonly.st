*Wonka-Magritte-Dynamic-Core
readonly
	"Answer ==true== if the model described by the receiver is read-only."

	^ (self propertyAt: #readonly ifAbsent: [ self class defaultReadonly ]) value 