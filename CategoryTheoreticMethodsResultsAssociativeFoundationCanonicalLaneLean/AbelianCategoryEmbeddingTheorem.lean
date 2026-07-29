import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AbelianCategoryEmbeddingPackage where
  abelianCategory : Type u
  embeddingIntoModuleCategory : Type u -> Type v
  exactnessPreserved : Prop
  abelianCategoryTerm : abelianCategory
  embeddingIntoModuleCategoryTerm : embeddingIntoModuleCategory
  exactnessPreservedTerm : exactnessPreserved

structure AbelianCategoryEmbeddingEvidence (A : AbelianCategoryEmbeddingPackage) where
  exactnessPreservedClosed : A.exactnessPreserved

def AbelianCategoryEmbeddingClosed (A : AbelianCategoryEmbeddingPackage) : Prop :=
  A.exactnessPreserved

theorem abelian_category_embedding_closed_from_evidence (A : AbelianCategoryEmbeddingPackage) (E : AbelianCategoryEmbeddingEvidence A) :
    AbelianCategoryEmbeddingClosed A := by
  exact E.exactnessPreservedClosed

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse
