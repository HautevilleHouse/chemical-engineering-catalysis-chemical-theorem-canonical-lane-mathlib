import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  temperature : Type u
  pressure : Type v
  gibbsFreeEnergy : Type w
  equilibriumConstant : Type x
  enthalpyEntropyRelation : Prop
  vanHoffEquation : Prop
  spontaneityCondition : Prop
  equilibriumCondition : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyEntropyRelationClosed : T.enthalpyEntropyRelation
  vanHoffEquationClosed : T.vanHoffEquation
  spontaneityConditionClosed : T.spontaneityCondition
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpyEntropyRelation ∧ T.vanHoffEquation ∧ T.spontaneityCondition ∧ T.equilibriumCondition

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.enthalpyEntropyRelationClosed
    (And.intro E.vanHoffEquationClosed
      (And.intro E.spontaneityConditionClosed E.equilibriumConditionClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse