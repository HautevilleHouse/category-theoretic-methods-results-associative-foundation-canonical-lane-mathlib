import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : CategoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse