import CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure UniversalConstructionPackage where
  initialObjectExists : Prop
  terminalObjectExists : Prop
  productExists : Prop
  coproductExists : Prop
  equalizerExists : Prop
  coequalizerExists : Prop

structure UniversalConstructionEvidence (U : UniversalConstructionPackage) where
  initialObjectClosed : U.initialObjectExists
  terminalObjectClosed : U.terminalObjectExists
  productClosed : U.productExists
  coproductClosed : U.coproductExists
  equalizerClosed : U.equalizerExists
  coequalizerClosed : U.coequalizerExists

def UniversalConstructionClosed (U : UniversalConstructionPackage) : Prop :=
  U.initialObjectExists ∧ U.terminalObjectExists ∧
  U.productExists ∧ U.coproductExists ∧
  U.equalizerExists ∧ U.coequalizerExists

theorem universal_construction_closed_from_evidence
    (U : UniversalConstructionPackage) (E : UniversalConstructionEvidence U) :
    UniversalConstructionClosed U := by
  exact And.intro E.initialObjectClosed
    (And.intro E.terminalObjectClosed
      (And.intro E.productClosed
        (And.intro E.coproductClosed
          (And.intro E.equalizerClosed E.coequalizerClosed))))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse