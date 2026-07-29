import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalyticCyclePackage (A : AdmissibleClass) where
  adsorptionStep : Prop
  surfaceReaction : Prop
  desorptionStep : Prop
  turnoverFrequency : Prop

structure CatalyticCycleEvidence (A : AdmissibleClass) (C : CatalyticCyclePackage A) where
  adsorptionStepClosed : C.adsorptionStep
  surfaceReactionClosed : C.surfaceReaction
  desorptionStepClosed : C.desorptionStep
  turnoverFrequencyClosed : C.turnoverFrequency

def CatalyticCycleClosed (A : AdmissibleClass) (C : CatalyticCyclePackage A) : Prop :=
  C.adsorptionStep ∧ C.surfaceReaction ∧ C.desorptionStep ∧ C.turnoverFrequency

theorem catalytic_cycle_closed_from_evidence (A : AdmissibleClass) (C : CatalyticCyclePackage A) (E : CatalyticCycleEvidence A C) : CatalyticCycleClosed A C := by
  exact And.intro E.adsorptionStepClosed (And.intro E.surfaceReactionClosed (And.intro E.desorptionStepClosed E.turnoverFrequencyClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse