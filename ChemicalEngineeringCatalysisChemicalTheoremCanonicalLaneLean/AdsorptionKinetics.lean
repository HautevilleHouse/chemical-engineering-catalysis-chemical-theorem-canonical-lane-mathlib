import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

structure AdsorptionKineticsPackage where
  surfaceReactionMechanism : Prop
  langmuirHinshelwoodModel : Prop
  rateExpressionDerived : Prop
  activationEnergyComputed : Prop
  adsorptionEquilibriumConstant : Prop

structure AdsorptionKineticsEvidence (A : AdsorptionKineticsPackage) where
  surfaceReactionMechanismClosed : A.surfaceReactionMechanism
  langmuirHinshelwoodModelClosed : A.langmuirHinshelwoodModel
  rateExpressionDerivedClosed : A.rateExpressionDerived
  activationEnergyComputedClosed : A.activationEnergyComputed
  adsorptionEquilibriumConstantClosed : A.adsorptionEquilibriumConstant

def AdsorptionKineticsClosed (A : AdsorptionKineticsPackage) : Prop :=
  A.surfaceReactionMechanism ∧ A.langmuirHinshelwoodModel ∧
  A.rateExpressionDerived ∧ A.activationEnergyComputed ∧
  A.adsorptionEquilibriumConstant

theorem adsorption_kinetics_closed_from_evidence (A : AdsorptionKineticsPackage) (E : AdsorptionKineticsEvidence A) : AdsorptionKineticsClosed A :=
  And.intro E.surfaceReactionMechanismClosed
    (And.intro E.langmuirHinshelwoodModelClosed
      (And.intro E.rateExpressionDerivedClosed
        (And.intro E.activationEnergyComputedClosed E.adsorptionEquilibriumConstantClosed)))

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse