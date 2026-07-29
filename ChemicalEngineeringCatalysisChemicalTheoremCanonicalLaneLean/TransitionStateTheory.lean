import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure TransitionStateTheoryPackage where
  activatedComplexFormulation : Prop
  eyringEquationDerived : Prop
  enthalpyOfActivation : Prop
  entropyOfActivation : Prop
  gibbsFreeEnergyOfActivation : Prop

structure TransitionStateTheoryEvidence (T : TransitionStateTheoryPackage) where
  activatedComplexFormulationClosed : T.activatedComplexFormulation
  eyringEquationDerivedClosed : T.eyringEquationDerived
  enthalpyOfActivationClosed : T.enthalpyOfActivation
  entropyOfActivationClosed : T.entropyOfActivation
  gibbsFreeEnergyOfActivationClosed : T.gibbsFreeEnergyOfActivation

def TransitionStateTheoryClosed (T : TransitionStateTheoryPackage) : Prop :=
  T.activatedComplexFormulation ∧ T.eyringEquationDerived ∧
  T.enthalpyOfActivation ∧ T.entropyOfActivation ∧
  T.gibbsFreeEnergyOfActivation

theorem transition_state_theory_closed_from_evidence (T : TransitionStateTheoryPackage) (E : TransitionStateTheoryEvidence T) : TransitionStateTheoryClosed T :=
  And.intro E.activatedComplexFormulationClosed
    (And.intro E.eyringEquationDerivedClosed
      (And.intro E.enthalpyOfActivationClosed
        (And.intro E.entropyOfActivationClosed E.gibbsFreeEnergyOfActivationClosed)))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse