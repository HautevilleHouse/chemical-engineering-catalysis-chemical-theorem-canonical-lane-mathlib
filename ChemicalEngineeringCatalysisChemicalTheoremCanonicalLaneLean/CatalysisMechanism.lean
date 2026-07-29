import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure CatalysisMechanismPackage where
  catalystSurface : Type u
  activeSite : Type v
  adsorptionIsotherm : Type w
  reactionIntermediate : Type x
  langmuirHinshelwoodMechanism : Prop
  sabatierPrinciple : Prop
  turnoverFrequency : Prop
  rateDeterminingStep : Prop

structure CatalysisMechanismEvidence (C : CatalysisMechanismPackage) where
  langmuirHinshelwoodMechanismClosed : C.langmuirHinshelwoodMechanism
  sabatierPrincipleClosed : C.sabatierPrinciple
  turnoverFrequencyClosed : C.turnoverFrequency
  rateDeterminingStepClosed : C.rateDeterminingStep

def CatalysisMechanismClosed (C : CatalysisMechanismPackage) : Prop :=
  C.langmuirHinshelwoodMechanism ∧ C.sabatierPrinciple ∧ C.turnoverFrequency ∧ C.rateDeterminingStep

theorem catalysis_mechanism_closed_from_evidence (C : CatalysisMechanismPackage)
    (E : CatalysisMechanismEvidence C) : CatalysisMechanismClosed C := by
  exact And.intro E.langmuirHinshelwoodMechanismClosed
    (And.intro E.sabatierPrincipleClosed
      (And.intro E.turnoverFrequencyClosed E.rateDeterminingStepClosed))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse