import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalyticReactionKineticsPackage where
  rateExpression : Type u
  arrheniusPreExponential : Type v
  activationEnergy : Type w
  siteCoverageBalance : Prop
  turnoverFrequencyComputed : Prop
  surfaceReactionMechanism : Prop
  massTransferCorrection : Prop

structure CatalyticReactionKineticsEvidence (R : CatalyticReactionKineticsPackage) where
  rateExpressionClosed : R.rateExpression
  arrheniusPreExponentialClosed : R.arrheniusPreExponential
  activationEnergyClosed : R.activationEnergy
  siteCoverageBalanceClosed : R.siteCoverageBalance
  turnoverFrequencyComputedClosed : R.turnoverFrequencyComputed
  surfaceReactionMechanismClosed : R.surfaceReactionMechanism
  massTransferCorrectionClosed : R.massTransferCorrection

def CatalyticReactionKineticsClosed (R : CatalyticReactionKineticsPackage) : Prop :=
  R.rateExpression ∧ R.arrheniusPreExponential ∧ R.activationEnergy ∧
  R.siteCoverageBalance ∧ R.turnoverFrequencyComputed ∧
  R.surfaceReactionMechanism ∧ R.massTransferCorrection

theorem catalytic_reaction_kinetics_closed_from_evidence
    (R : CatalyticReactionKineticsPackage) (E : CatalyticReactionKineticsEvidence R) :
    CatalyticReactionKineticsClosed R := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.arrheniusPreExponentialClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.siteCoverageBalanceClosed
          (And.intro E.turnoverFrequencyComputedClosed
            (And.intro E.surfaceReactionMechanismClosed
              E.massTransferCorrectionClosed)))))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse