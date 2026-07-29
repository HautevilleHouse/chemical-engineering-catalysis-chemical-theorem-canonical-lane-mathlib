import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage (A : AdmissibleClass) where
  huckelMethod : Prop
  symmetryAdaptedOrbitals : Prop
  frontierOrbitalTheory : Prop
  catalyticActivityPredicted : Prop

structure MolecularOrbitalTheoryEvidence (A : AdmissibleClass) (M : MolecularOrbitalTheoryPackage A) where
  huckelMethodClosed : M.huckelMethod
  symmetryAdaptedOrbitalsClosed : M.symmetryAdaptedOrbitals
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory
  catalyticActivityPredictedClosed : M.catalyticActivityPredicted

def MolecularOrbitalTheoryClosed (A : AdmissibleClass) (M : MolecularOrbitalTheoryPackage A) : Prop :=
  M.huckelMethod ∧ M.symmetryAdaptedOrbitals ∧ M.frontierOrbitalTheory ∧ M.catalyticActivityPredicted

theorem molecular_orbital_theory_closed_from_evidence (A : AdmissibleClass) (M : MolecularOrbitalTheoryPackage A) (E : MolecularOrbitalTheoryEvidence A M) : MolecularOrbitalTheoryClosed A M := by
  exact And.intro E.huckelMethodClosed (And.intro E.symmetryAdaptedOrbitalsClosed (And.intro E.frontierOrbitalTheoryClosed E.catalyticActivityPredictedClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse