# context("t2d_risk")
#
# coeff_tbl <- read.csv("")
#
# test_that(
# 	desc = "t2d_risk_get returns right result for example person",
# 	code = {
#
# 		RA <- t2d_risk_get(gender = "m",
# 											 age    = 45,
# 											 waist  = 80,
# 											 hyp    = 1,
# 											 t2dpar = 0,
# 											 t2drel = 1,
# 											 glicps = 0,
# 											 sport  = 0,
# 											 diet   = 1,
# 											 bmi = 79/(172/100)^2,
# 											 coeff = coeff_tbl)
#
#
# 		expect_equal(round(RA$t2d, digits = 2), 0.04)
# 	})
