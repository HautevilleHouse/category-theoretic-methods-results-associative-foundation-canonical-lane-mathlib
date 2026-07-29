import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure YonedaLemma where
  yonedaEmbedding : Type u → (Type u → Type v) → Type (max u v)
  fullFaithfulness : Prop
  naturality : Prop

structure YonedaLemmaEvidence (Y : YonedaLemma) where
  fullFaithfulnessClosed : Y.fullFaithfulness
  naturalityClosed : Y.naturality

def YonedaLemmaClosed (Y : YonedaLemma) : Prop :=
  Y.fullFaithfulness ∧ Y.naturality

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemma) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.fullFaithfulnessClosed E.naturalityClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse