context("obesity_risk_calc")


test_that(
	desc = paste("If female and BMI < 25",
							 "RA_over (overweight) risk is 16.5%",
							 "RA_ob (obesity) is 1%"),
	code = {
		BMI <- 24
		sex <- "f"

		RA <- obesity_risk_get(sex, BMI)

		expect_equal(RA$over, 0.165)
		expect_equal(RA$ob, 0.01)
	})

test_that(
	desc = paste("If female and 25 < BMI < 30,",
							 "RA_over (overweight) risk is 100%",
							 "RA_ob (obesity) is 19.5%"),
	code = {
		BMI <- 27
		sex <- "f"

		RA <- obesity_risk_get(sex, BMI)

		expect_equal(RA$over, 1)
		expect_equal(RA$ob, 0.195)
	})

test_that(
	desc = paste("If male and BMI < 25",
							 "RA_over (overweight) risk is 28%",
							 "RA_ob (obesity) is 1%"),
	code = {
		BMI <- 24
		sex <- "m"

		RA <- obesity_risk_get(sex, BMI)

		expect_equal(RA$over, 0.28)
		expect_equal(RA$ob, 0.01)
	})

test_that(
	desc = paste("If male and 25 < BMI < 30",
							 "RA_over (overweight) risk is 100%",
							 "RA_ob (obesity) is 13%"),
	code = {
		BMI <- 27
		sex <- "m"

		RA <- obesity_risk_get(sex, BMI)

		expect_equal(RA$over, 1)
		expect_equal(RA$ob, 0.13)
	})

