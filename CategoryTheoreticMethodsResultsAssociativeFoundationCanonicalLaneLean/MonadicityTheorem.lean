import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure MonadicityPackage where
  monad : Type u -> Type v
  comparisonFunctor : Type u -> Type v
  monadicCondition : Prop
  monadTerm : monad
  comparisonFunctorTerm : comparisonFunctor
  monadicConditionTerm : monadicCondition

structure MonadicityEvidence (M : MonadicityPackage) where
  monadicConditionClosed : M.monadicCondition

def MonadicityClosed (M : MonadicityPackage) : Prop :=
  M.monadicCondition

theorem monadicity_closed_from_evidence (M : MonadicityPackage) (E : MonadicityEvidence M) :
    MonadicityClosed M := by
  exact E.monadicConditionClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse
