import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactionQuotient : Type u
  equilibriumConstant : Type v
  leChatelierPrinciple : Prop
  lawOfMassAction : Prop
  equilibriumShift : Prop
  temperatureEffect : Prop
  pressureEffect : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  lawOfMassActionClosed : C.lawOfMassAction
  equilibriumShiftClosed : C.equilibriumShift
  temperatureEffectClosed : C.temperatureEffect
  pressureEffectClosed : C.pressureEffect

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrinciple ∧ C.lawOfMassAction ∧ C.equilibriumShift ∧ C.temperatureEffect ∧ C.pressureEffect

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleClosed
    (And.intro E.lawOfMassActionClosed
      (And.intro E.equilibriumShiftClosed
        (And.intro E.temperatureEffectClosed E.pressureEffectClosed)))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse