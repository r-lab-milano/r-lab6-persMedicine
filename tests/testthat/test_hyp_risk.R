# context("hyp_risk")
#
# coeff_tbl <- read.csv("")
#
# test_that(
# 	desc = "hyp_risk_get returns right result for example person",
# 	code = {
# 		RA <- hyp_risk_get(gender = "m",
# 											 age    = 45,
# 											 syst   = 130,
# 											 diast  = 80,
# 											 hyppar = 1,
# 											 smoke  = 0,
# 											 bmi = 79/(172/100)^2,
# 											 coeff = coeff_tbl)
#
# 		expect_equal(round(RA$hyp, digits = 2), 0.20)
# 	})
