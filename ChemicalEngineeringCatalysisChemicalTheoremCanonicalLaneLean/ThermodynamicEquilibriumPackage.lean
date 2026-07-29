import HautevilleHouse.ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.ReactionKineticsAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  temperature : Type
  pressure : Type
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop
  vanHoffEquation : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  vanHoffEquationClosed : T.vanHoffEquation

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumConstant ∧ T.gibbsFreeEnergy ∧ T.vanHoffEquation

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.gibbsFreeEnergyClosed E.vanHoffEquationClosed)

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse