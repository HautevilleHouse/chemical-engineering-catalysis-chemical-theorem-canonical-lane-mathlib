import ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CatalysisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringCatalysisChemicalTheoremCanonicalLaneLean
end HautevilleHouse