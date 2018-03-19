
hyp_risk_get <- function(gender,age,syst,diast,hyppar,smoke,bmi,coeff_tbl) {

	age_bpmin       <- age * diast
	gender_recode   <- ifelse(gender == "m", 0, ifelse(gender == "f", 1, NA))

	p_param_list    <- c(age,bmi,gender_recode,syst,diast,smoke,hyppar,age_bpmin)
	coeff_list      <- coeff_tbl[coeff_tbl$disease == "hyp" & coeff_tbl$sex == gender & grepl("b", coeff_tbl$coeff), ]
	coeff_list$user <- p_param_list
	coeff_list$prod <- coeff_list$value * coeff_list$user

	function_sum    <- sum(coeff_list$prod)

	I <- coeff_tbl[coeff_tbl$disease == "hyp" & coeff_tbl$sex == gender & coeff_tbl$coeff == "I", "value"]
	S <- coeff_tbl[coeff_tbl$disease == "hyp" & coeff_tbl$sex == gender & coeff_tbl$coeff == "S", "value"]

	hyp <- 1 - exp ( - exp ( ( log(4) - ( I + function_sum) ) / S ) )

	RA <- list(hyp = hyp)

}
