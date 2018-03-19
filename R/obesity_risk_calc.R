
# obesity_risk_get --------------------------------------------------------

obesity_risk_get <- function(sex, bmi) {
	over <- case_when(
		sex == "m" & bmi <= 25 ~ 0.28,
		sex == "m" & bmi > 30 ~ 1,
		sex == "m" ~ 1,
		sex == "f" & bmi <= 25 ~ 0.165,
		sex == "f" & bmi > 30 ~ 1,
		sex == "f" ~ 1,
		TRUE ~ 1)
	ob <- case_when(
		sex == "m" & bmi <= 25 ~ 0.01,
		sex == "m" & bmi > 30 ~ 1,
		sex == "m" ~ 0.13,
		sex == "f" & bmi <= 25 ~ 0.01,
		sex == "f" & bmi > 30 ~ 1,
		sex == "f" ~ 0.195,
		TRUE ~ 1)
	RA <- list(over = over,
						 ob = ob)
	return(RA)
}

# p <- list(sex = "m", bmi = 27)
# obesity_risk_get(p$sex, p$bmi)



# rr_obesity_risk_get -----------------------------------------------------


rr_obesity_risk_get <- function(sex, bmi) {
	RA <- obesity_risk_get(sex, bmi)
	RR_over <- case_when(
		sex == "m" ~ RA$over/0.193,
		TRUE ~ RA$over/0.149)
	RR_ob <- RA$ob/0.08
	RR <- list(over = RR_over, ob = RR_ob)
	return(RR)
}

# p <- list(sex = "f", bmi = 27)
# rr_obesity_risk_get(p$sex, p$bmi)

