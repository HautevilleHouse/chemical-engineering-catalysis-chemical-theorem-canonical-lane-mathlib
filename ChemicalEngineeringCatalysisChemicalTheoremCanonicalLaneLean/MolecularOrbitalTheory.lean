import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  basisSet : Type u
  hamiltonianMatrix : Type v
  overlapMatrix : Type w
  secularEquation : Prop
  orbitalEnergies : Prop
  electronConfiguration : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalTheoryPackage) where
  secularEquationClosed : M.secularEquation
  orbitalEnergiesClosed : M.orbitalEnergies
  electronConfigurationClosed : M.electronConfiguration

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.secularEquation ∧ M.orbitalEnergies ∧ M.electronConfiguration

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.secularEquationClosed
    (And.intro E.orbitalEnergiesClosed E.electronConfigurationClosed)

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse