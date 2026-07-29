import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean

structure AbelianCategoryPackage where
  zeroObjectExists : Prop
  kernelExists : Prop
  cokernelExists : Prop
  monoEquivToKernel : Prop
  epiEquivToCokernel : Prop
  exactSequenceCharacterization : Prop

structure AbelianCategoryEvidence (P : AbelianCategoryPackage) where
  zeroObjectExistsClosed : P.zeroObjectExists
  kernelExistsClosed : P.kernelExists
  cokernelExistsClosed : P.cokernelExists
  monoEquivToKernelClosed : P.monoEquivToKernel
  epiEquivToCokernelClosed : P.epiEquivToCokernel
  exactSequenceCharacterizationClosed : P.exactSequenceCharacterization

def AbelianCategoryClosed (P : AbelianCategoryPackage) : Prop :=
  P.zeroObjectExists ∧ P.kernelExists ∧ P.cokernelExists ∧
  P.monoEquivToKernel ∧ P.epiEquivToCokernel ∧ P.exactSequenceCharacterization

theorem abelian_category_closed_from_evidence (P : AbelianCategoryPackage)
    (E : AbelianCategoryEvidence P) : AbelianCategoryClosed P := by
  exact And.intro E.zeroObjectExistsClosed
    (And.intro E.kernelExistsClosed
      (And.intro E.cokernelExistsClosed
        (And.intro E.monoEquivToKernelClosed
          (And.intro E.epiEquivToCokernelClosed E.exactSequenceCharacterizationClosed))))

end CategoryTheoreticMethodsResultsAssociativeFoundationCanonicalLaneLean
end HautevilleHouse