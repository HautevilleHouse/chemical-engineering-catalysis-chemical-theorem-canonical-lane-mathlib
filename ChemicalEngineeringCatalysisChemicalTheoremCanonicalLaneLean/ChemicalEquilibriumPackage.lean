import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ChemicalEquilibriumPackage (A : AdmissibleClass) where
  lawOfMassAction : Prop
  equilibriumShift : Prop
  temperatureDependence : Prop
  catalystEffect : Prop

structure ChemicalEquilibriumEvidence (A : AdmissibleClass) (C : ChemicalEquilibriumPackage A) where
  lawOfMassActionClosed : C.lawOfMassAction
  equilibriumShiftClosed : C.equilibriumShift
  temperatureDependenceClosed : C.temperatureDependence
  catalystEffectClosed : C.catalystEffect

def ChemicalEquilibriumClosed (A : AdmissibleClass) (C : ChemicalEquilibriumPackage A) : Prop :=
  C.lawOfMassAction ∧ C.equilibriumShift ∧ C.temperatureDependence ∧ C.catalystEffect

theorem chemical_equilibrium_closed_from_evidence (A : AdmissibleClass) (C : ChemicalEquilibriumPackage A) (E : ChemicalEquilibriumEvidence A C) : ChemicalEquilibriumClosed A C := by
  exact And.intro E.lawOfMassActionClosed (And.intro E.equilibriumShiftClosed (And.intro E.temperatureDependenceClosed E.catalystEffectClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse