import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ReactionKineticsPackage (A : AdmissibleClass) where
  rateLaw : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  reactionOrder : Prop

structure ReactionKineticsEvidence (A : AdmissibleClass) (R : ReactionKineticsPackage A) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  preExponentialFactorClosed : R.preExponentialFactor
  reactionOrderClosed : R.reactionOrder

def ReactionKineticsClosed (A : AdmissibleClass) (R : ReactionKineticsPackage A) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.preExponentialFactor ∧ R.reactionOrder

theorem reaction_kinetics_closed_from_evidence (A : AdmissibleClass) (R : ReactionKineticsPackage A) (E : ReactionKineticsEvidence A R) : ReactionKineticsClosed A R := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed E.reactionOrderClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse