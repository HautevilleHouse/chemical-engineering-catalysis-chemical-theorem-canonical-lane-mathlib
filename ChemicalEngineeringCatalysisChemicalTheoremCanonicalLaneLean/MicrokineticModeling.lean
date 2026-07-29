import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure MicrokineticModelingPackage where
  elementaryStepIdentification : Prop
  steadyStateApproximation : Prop
  rateDeterminingStep : Prop
  coverageDependence : Prop
  turnoverFrequencyComputed : Prop

structure MicrokineticModelingEvidence (M : MicrokineticModelingPackage) where
  elementaryStepIdentificationClosed : M.elementaryStepIdentification
  steadyStateApproximationClosed : M.steadyStateApproximation
  rateDeterminingStepClosed : M.rateDeterminingStep
  coverageDependenceClosed : M.coverageDependence
  turnoverFrequencyComputedClosed : M.turnoverFrequencyComputed

def MicrokineticModelingClosed (M : MicrokineticModelingPackage) : Prop :=
  M.elementaryStepIdentification ∧ M.steadyStateApproximation ∧
  M.rateDeterminingStep ∧ M.coverageDependence ∧
  M.turnoverFrequencyComputed

theorem microkinetic_modeling_closed_from_evidence (M : MicrokineticModelingPackage) (E : MicrokineticModelingEvidence M) : MicrokineticModelingClosed M :=
  And.intro E.elementaryStepIdentificationClosed
    (And.intro E.steadyStateApproximationClosed
      (And.intro E.rateDeterminingStepClosed
        (And.intro E.coverageDependenceClosed E.turnoverFrequencyComputedClosed)))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse