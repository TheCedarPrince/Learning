using Dates: DateTime
using OMOPCommonDataModel: Person, ObservationPeriod, DrugExposure

#=
Exercise 4.1. John is an African American man born on August 4, 1974. Define an entry
in the PERSON table that encodes this information.
=#

john = Person(
    person_id = 2,
    gender_concept_id = 8507,
    year_of_birth = 1974,
    month_of_birth = 8,
    day_of_birth = 4,
    birth_datetime = DateTime(1974, 8, 4),
    race_concept_id = 8516,
    ethnicity_concept_id = 38003564,
    location_id = missing,
    provider_id = missing,
    care_site_id = missing,
    person_source_value = "John",
    gender_source_value = "M",
    gender_source_concept_id = 8507,
    race_source_value = "African American",
    race_source_concept_id = 8516,
    ethnicity_source_value = "Not Hispanic or Latino",
    ethnicity_source_concept_id = 38003564,
)

#=
Exercise 4.2. John enrolled in his current insurance on January 1st, 2015. The data from
his insurance database were extracted on July 1st, 2019. Define an entry in the OBSER­
VATION_PERIOD table that encodes this information.
=#

observation_period = ObservationPeriod(
    observation_period_id = rand(1) * 100000 |> x -> round(Int, x...),
    person_id = 2,
    observation_period_start_date = DateTime(2015, 1, 1),
    observation_period_end_date = DateTime(2019, 7, 1),
    period_type_concept_id = 44814725,
)

#=
Exercise 4.3. John was prescribed a 30­day supply of Ibuprofen 200 MG Oral
tablets (NDC code: 76168009520) on May 1st, 2019. Define an entry in the
DRUG_EXPOSURE table that encodes this information.
=#

drug_exposure = DrugExposure(
    drug_exposure_id = rand(1) * 100000 |> x -> round(Int, x...),
    person_id = 2,
    drug_concept_id = 76168009520,
    drug_exposure_start_date = DateTime(2019, 5, 1),
    drug_exposure_start_datetime = DateTime(2019, 5, 1),
    drug_exposure_end_date = DateTime(2019, 6, 1),
    drug_exposure_end_datetime = DateTime(2019, 6, 1),
    verbatim_end_date = missing,
    drug_type_concept_id = 38000177,
    stop_reason = missing,
    refills = missing,
    days_supply = missing,
    sig = missing,
    route_concept_id = 4132161,
    lot_number = missing,
    provider_id = missing,
)
