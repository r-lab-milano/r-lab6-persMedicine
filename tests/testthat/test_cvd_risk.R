# context("cvd_risk")
#
# coeff_tbl <- read.csv("")
#
# test_that(
# 	desc = "cvd_risk_get returns right result for example person",
# 	code = {
#
# 		RA <- cvd_risk_get(gender = "m",
# 											 age    = 45,
# 											 syst   = 130,
# 											 hdl    = 45,
# 											 chol   = 190,
# 											 hyp    = 1,
# 											 t2d    = 0,
# 											 smoke  = 0)
#
# 		expect_equal(round(RA$cvd, digits = 3), 0.031)
# 	})
