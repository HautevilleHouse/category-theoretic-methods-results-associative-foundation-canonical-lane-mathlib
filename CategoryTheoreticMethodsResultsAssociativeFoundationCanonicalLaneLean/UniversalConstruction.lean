import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.MathlibObjects

/-!
# Universal Construction Package
-/

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure UniversalConstructionPackage (O : CategoryObject) where
  limitObject : O.carrier
  limitCone : O.categoryStructure.LimitCone limitObject
  limitUniversal : Prop
  colimitObject : O.carrier
  colimitCocone : O.categoryStructure.ColimitCocone colimitObject
  colimitUniversal : Prop

structure UniversalConstructionEvidence {O : CategoryObject} (U : UniversalConstructionPackage O) where
  limitUniversalClosed : U.limitUniversal
  colimitUniversalClosed : U.colimitUniversal

def UniversalConstructionClosed {O : CategoryObject} (U : UniversalConstructionPackage O) : Prop :=
  U.limitUniversal ∧ U.colimitUniversal

theorem universal_construction_closed_from_evidence {O : CategoryObject}
    (U : UniversalConstructionPackage O) (E : UniversalConstructionEvidence U) :
    UniversalConstructionClosed U := by
  exact And.intro E.limitUniversalClosed E.colimitUniversalClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse