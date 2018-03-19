# context("Persona")
#
# input <- list(weight = 79,
# 							 height = 172,
# 							 gender = "m",
# 							 age    = 45,
# 							 waist  = 80,
# 							 glic   = 120,
# 							 syst   = 130,
# 							 diast  = 80,
# 							 hdl    = 45,
# 							 chol   = 190,
# 							 hyp    = 1,
# 							 hyppar = 1,
# 							 t2dpar = 0,
# 							 t2drel = 1,
# 							 t2d    = 0,
# 							 smoke  = 0,
# 							 glicps = 0,
# 							 sport  = 0,
# 							 diet   = 1)
#
# test_that(desc = "Persona creates all needed parameters", {
# 	p <- Persona(weight = input$weight ,
# 							 height = input$height ,
# 							 gender = input$gender ,
# 							 age    = input$age    ,
# 							 waist  = input$waist  ,
# 							 glic   = input$glic   ,
# 							 syst   = input$syst   ,
# 							 diast  = input$diast  ,
# 							 hdl    = input$hdl    ,
# 							 chol   = input$chol   ,
# 							 hyp    = input$hyp    ,
# 							 hyppar = input$hyppar ,
# 							 t2dpar = input$t2dpar ,
# 							 t2drel = input$t2drel ,
# 							 t2d    = input$t2d    ,
# 							 smoke  = input$smoke  ,
# 							 glicps = input$glicps ,
# 							 sport  = input$sport  ,
# 							 diet   = input$diet   )
#
# 	expect_equal( p$weight , input$weight )
# 	expect_equal( p$height , input$height )
# 	expect_equal( p$gender , input$gender )
# 	expect_equal( p$age    , input$age    )
# 	expect_equal( p$waist  , input$waist  )
# 	expect_equal( p$glic   , input$glic   )
# 	expect_equal( p$syst   , input$syst   )
# 	expect_equal( p$diast  , input$diast  )
# 	expect_equal( p$hdl    , input$hdl    )
# 	expect_equal( p$chol   , input$chol   )
# 	expect_equal( p$hyp    , input$hyp    )
# 	expect_equal( p$hyppar , input$hyppar )
# 	expect_equal( p$t2dpar , input$t2dpar )
# 	expect_equal( p$t2drel , input$t2drel )
# 	expect_equal( p$t2d    , input$t2d    )
# 	expect_equal( p$smoke  , input$smoke  )
# 	expect_equal( p$glicps , input$glicps )
# 	expect_equal( p$sport  , input$sport  )
# 	expect_equal( p$diet   , input$diet   )
#
# 	# additional parameter
# 	expect_equal( p$bmi    , input$weight / (input$height / 100)^2 )
#
# })
#
# test_that(desc = "Persona creates all needed parameters NA by default", {
# 	p <- Persona()
#
# 	expect_that( is.na( p$weight ) )
# 	expect_that( is.na( p$height ) )
# 	expect_that( is.na( p$gender ) )
# 	expect_that( is.na( p$age    ) )
# 	expect_that( is.na( p$waist  ) )
# 	expect_that( is.na( p$glic   ) )
# 	expect_that( is.na( p$syst   ) )
# 	expect_that( is.na( p$diast  ) )
# 	expect_that( is.na( p$hdl    ) )
# 	expect_that( is.na( p$chol   ) )
# 	expect_that( is.na( p$hyp    ) )
# 	expect_that( is.na( p$hyppar ) )
# 	expect_that( is.na( p$t2dpar ) )
# 	expect_that( is.na( p$t2drel ) )
# 	expect_that( is.na( p$t2d    ) )
# 	expect_that( is.na( p$smoke  ) )
# 	expect_that( is.na( p$glicps ) )
# 	expect_that( is.na( p$sport  ) )
# 	expect_that( is.na( p$diet   ) )
#
# 	# additional parameter
# 	expect_that( is.na( p$bmi ) )
#
# })
