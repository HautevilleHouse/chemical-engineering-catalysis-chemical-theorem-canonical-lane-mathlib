import HautevilleHouse.ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.ReactionKineticsAdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure MolecularOrbitalPackage where
  basisSet : Type
  hamiltonian : Type
  eigenvalueEquation : Prop
  wavefunctionSymmetry : Prop
  bondingAntibonding : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  eigenvalueEquationClosed : M.eigenvalueEquation
  wavefunctionSymmetryClosed : M.wavefunctionSymmetry
  bondingAntibondingClosed : M.bondingAntibonding

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.eigenvalueEquation ∧ M.wavefunctionSymmetry ∧ M.bondingAntibonding

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.eigenvalueEquationClosed
    (And.intro E.wavefunctionSymmetryClosed E.bondingAntibondingClosed)

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse