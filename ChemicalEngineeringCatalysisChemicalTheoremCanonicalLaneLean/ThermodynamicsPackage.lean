import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure ThermodynamicsPackage (A : AdmissibleClass) where
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  equilibriumConstant : Prop

structure ThermodynamicsEvidence (A : AdmissibleClass) (T : ThermodynamicsPackage A) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsClosed (A : AdmissibleClass) (T : ThermodynamicsPackage A) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.equilibriumConstant

theorem thermodynamics_closed_from_evidence (A : AdmissibleClass) (T : ThermodynamicsPackage A) (E : ThermodynamicsEvidence A T) : ThermodynamicsClosed A T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyChangeClosed (And.intro E.entropyChangeClosed E.equilibriumConstantClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse