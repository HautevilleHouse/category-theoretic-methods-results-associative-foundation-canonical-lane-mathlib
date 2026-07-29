import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure KanExtensionPackage where
  leftKan : Type u -> Type v
  rightKan : Type u -> Type v
  universalProperty : Prop
  leftKanTerm : leftKan
  rightKanTerm : rightKan
  universalPropertyTerm : universalProperty

structure KanExtensionEvidence (K : KanExtensionPackage) where
  leftKanUniversalClosed : K.universalProperty
  rightKanUniversalClosed : K.universalProperty

def KanExtensionClosed (K : KanExtensionPackage) : Prop :=
  K.universalProperty

theorem kan_extension_closed_from_evidence (K : KanExtensionPackage) (E : KanExtensionEvidence K) :
    KanExtensionClosed K := by
  exact E.leftKanUniversalClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse
