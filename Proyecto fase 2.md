

### Proyecto Estadística Descriptiva fase 2

C-412 Richard Garcı́a De la Osa.
richard.garcia@estudiantes.matcom.uh.cu
C-412 Andy A. Castañeda Guerra.
andy.castaneda@estudiantes.matcom.uh.cu
C-411 Adrian Hernández Pérez.
a.hernandez3@estudiantes.matcom.uh.cu

##### Inciso a)

Tabla de correlacion de las variables.

Podemos ver que existe dependencia lineal entre las variables.

Modelo encontrado con todas las variables:

​	ganancias = $\beta_0 + \beta_1mes + \beta_2vendedores + \beta_3precio+e$.

Residuals

|   1    | 2       | 3       | 4       | 5       | 6      |
| :----: | ------- | ------- | ------- | ------- | ------ |
| 0.3842 | -0.2553 | -0.1026 | -0.2316 | -0.1289 | 0.3342 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|) |
| :---------: | -------- | ---------- | ------- | ---------- |
| (Intercept) | 15.9421  | 41.4813    | 0.384   | 0.738      |
|     mes     | 0.1000   | 0.9549     | 0.105   | 0.926      |
| vendedores  | 0.3447   | 0.2828     | 1.219   | 0.347      |
|   precio    | -24.7368 | 44.4184    | -0.557  | 0.634      |

​	Podemos ver que el valor del intercepto es bastante alto, esto indica que gran parte de las ganancias no esta muy bien explicada a partir de las variables independientes, lo cual no es muy deseable. Además notamos que los valores de Pr(>|t|) para todas las son mayores que 0.05.



Residual standard error: 0.4501 on 2 degrees of freedom
Multiple R-squared:  0.9724,    Adjusted R-squared:  0.9311 
F-statistic: 23.53 on 3 and 2 DF,  p-value: 0.04104

​	De estos valores podemos ver que el R-squared es 0.9311 que esta por encima de 0.70 por lo que indica que el modelo es bueno, sumando esto a que el valor del intercepto es malo podría indicar que necesitamos considerar otros factores. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo no está mal.

Analizando los Residuos:

​	mean(residuals)
​		[1] 3.931588e-17
​	sum(residuals)
​		[1] 2.359224e-16

La media de los errores es cero y la suma de los errores es cero.

​	shapiro.test(residuals)

​					Shapiro-Wilk normality test

​		data:  residuals
​		W = 0.80821, p-value = 0.06958

El valor de p-value es 0.06 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.6629, p-value = 0.3457
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.3457 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 1.9208, df = 3, p-value = 0.589

Como el p-value es 0.589 que es mucho mayor que 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por tanto, se cumplen todos los supuestos del modelo.



Ahora probaremos tipificando los datos para ver si llegamos a un mejor resultado:

Tabla de correlacion de las variables.

|                | mes        | ganancias  | vendedores | precio     |
| :------------: | ---------- | ---------- | ---------- | ---------- |
|    __mes__     | 1.0000000  | 0.9754693  | 0.9242225  | -0.9906649 |
| __ganancias__  | 0.9754693  | 1.0000000  | 0.9507990  | -0.9692131 |
| __vendedores__ | 0.9242225  | 0.9507990  | 1.0000000  | -0.8990229 |
|   __precio__   | -0.9906649 | -0.9692131 | -0.8990229 | 1.0000000  |



Residuals

|    1    | 2        | 3        | 4        | 5        | 6       |
| :-----: | -------- | -------- | -------- | -------- | ------- |
| 0.37310 | -0.27193 | -0.06374 | -0.23158 | -0.14561 | 0.33977 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|) |
| :---------: | -------- | ---------- | ------- | ---------- |
| (Intercept) | 19.8754  | 14.4148    | 1.379   | 0.2618     |
| vendedores  | 0.3614   | 0.1914     | 1.888   | 0.1554     |
|   precio    | -29.1813 | 10.7320    | -2.719  | 0.0726 .   |

Residual standard error: 0.3685 on 3 degrees of freedom
Multiple R-squared:  0.9723,    Adjusted R-squared:  0.9538 
F-statistic: 52.64 on 2 and 3 DF,  p-value: 0.004611



Dado que las tres variables estan relacionadas vamos a analizar modelos con una sola variable independiente porque si analizamos 2 no se cumpliría el supuesto de que no esten correlacionadas. También analizaremos el modelo $mes*precio*vendedores$.

modelo:

​	ganancia = $\beta_0 + \beta_1mesT$.

Residuals

|    1    |    2     |    3     |    4     |    5     |    6    |
| :-----: | :------: | :------: | :------: | :------: | :-----: |
| 0.26376 | -0.08274 | -0.31262 | -0.04054 | -0.13105 | 0.22211 |

Coefficients:

|             |  Estimate  | Std. Error | t value |  Pr(>\|t\|)  |
| :---------: | :--------: | :--------: | :-----: | :----------: |
| (Intercept) | -1.791e-16 | 1.005e-01  |  0.000  |    1.000     |
|     mes     | 9.755e-01  | 1.101e-01  |  8.862  | 0.000895 *** |

Residual standard error: 0.2461 on 4 degrees of freedom
Multiple R-squared:  0.9515,    Adjusted R-squared:  0.9394 
F-statistic: 78.54 on 1 and 4 DF,  p-value: 0.0008953

Podemos observar que el coeficiente del intercepto es lo suficientemente pequeño por lo que podemos decir que las ganancias estan bien explicadas. También tenemos que el el coeficiente de la variable mes es significativo en un 0% siendo esto muy bueno. El R-squared ajustado es 0.9394, el modelo es bueno pero no es el más ideal.

Analizando los Residuos:

​	mean(residuals)
​		[1] -1.156256e-17
​	sum(residuals)
​		[1] -6.938894e-17

La media de los errores es cero y la suma de los errores es cero.

​	shapiro.test(residuals)

​					Shapiro-Wilk normality test

​		data:  residuals
​		W = 0.95332, p-value = 0.7671

El valor de p-value es 0.7671 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.8646, p-value = 0.1854
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.1854 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 0.3209, df = 1, p-value = 0.5711

Como el p-value es 0.5711 que es mucho mayor que 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por tanto, se cumplen todos los supuestos del modelo.



modelo:

​	ganancia = $\beta_0 + \beta_1vendedoresT$.

Residuals

|    1    |    2     |    3    |    4     |    5    |    6    |
| :-----: | :------: | :-----: | :------: | :-----: | :-----: |
| 0.08846 | -0.22015 | 0.07137 | -0.50464 | 0.32872 | 0.23623 |

Coefficients:

|             |  Estimate  | Std. Error | t value | Pr(>\|t\|) |
| :---------: | :--------: | :--------: | :-----: | :--------: |
| (Intercept) | -6.078e-16 | 1.414e-01  |  0.000  |   1.000    |
| vendedores  | 9.508e-01  | 1.549e-01  |  6.138  | 0.00357 ** |

Residual standard error: 0.3464 on 4 degrees of freedom
Multiple R-squared:  0.904,    Adjusted R-squared:  0.88 
F-statistic: 37.67 on 1 and 4 DF,  p-value: 0.003572

Podemos observar que el coeficiente del intercepto es lo suficientemente pequeño por lo que podemos decir que las ganancias estan bien explicadas. También tenemos que el el coeficiente de la variable mes es significativo en un 0% siendo esto muy bueno. El R-squared ajustado es 0.88, el modelo es bueno pero no es el más ideal.

Analizando los Residuos:

​	mean(residuals)
​		[1] 1.156708e-17
​	sum(residuals)
​		[1] 6.938894e-17

La media de los errores es cero y la suma de los errores es cero.

​	shapiro.test(residuals)

​					Shapiro-Wilk normality test

​		data:  residuals
​		W = 0.92271, p-value = 0.5251

El valor de p-value es 0.5251 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 2.5318, p-value = 0.6277
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.6277 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 2.1927, df = 1, p-value = 0.1387

Como el p-value es 0.1387 que es mucho mayor que 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por tanto, se cumplen todos los supuestos del modelo.



modelo:

​	ganancia = $\beta_0 + \beta_1precioT$.

Residuals

|   1    |    2    |    3    |   4    |    5    |   6    |
| :----: | :-----: | :-----: | :----: | :-----: | :----: |
| 0.2038 | -0.1740 | -0.1588 | 0.1631 | -0.3162 | 0.2820 |

Coefficients:

|             |  Estimate  | Std. Error | t value | Pr(>\|t\|) |
| :---------: | :--------: | :--------: | :-----: | :--------: |
| (Intercept) | -7.057e-16 | 1.124e-01  |  0.000  |   1.000    |
| vendedores  | -9.692e-01 | 1.231e-01  | -7.873  | 0.00141 ** |

Residual standard error: 0.2753 on 4 degrees of freedom
Multiple R-squared:  0.9394,    Adjusted R-squared:  0.9242 
F-statistic: 61.98 on 1 and 4 DF,  p-value: 0.001407

Podemos observar que el coeficiente del intercepto es lo suficientemente pequeño por lo que podemos decir que las ganancias estan bien explicadas. También tenemos que el el coeficiente de la variable mes es significativo en un 0% siendo esto muy bueno. El R-squared ajustado es 0.9242, el modelo es bueno pero no es el más ideal.

Analizando los Residuos:

​	mean(residuals)
​		[1] 0
​	sum(residuals)
​		[1] 0

La media de los errores es cero y la suma de los errores es cero.

​	shapiro.test(residuals)

​					Shapiro-Wilk normality test

​		data:  residuals
​		W = 0.88891, p-value = 0.3125

El valor de p-value es 0.3125 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 2.7516, p-value = 0.6809
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.6809 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 3.4594, df = 1, p-value = 0.06289

Como el p-value es 0.06289 mayor que 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por tanto, se cumplen todos los supuestos del modelo.



modelo:

​	ganancia = $\beta_0 + \beta_1(mes*vendedores*precio)$.

Residuals

|    1    |    2     |    3     |    4     |    5     |    6    |
| :-----: | :------: | :------: | :------: | :------: | :-----: |
| 0.24671 | -0.07362 | -0.25226 | -0.04219 | -0.04028 | 0.16164 |

Coefficients:

|             | Estimate  | Std. Error | t value |  Pr(>\|t\|)  |
| :---------: | :-------: | :--------: | :-----: | :----------: |
| (Intercept) | -1.762907 |  0.179546  | -9.819  | 0.000603 *** |
| vendedores  | 0.020896  |  0.001896  | 11.020  | 0.000385 *** |

Residual standard error: 0.1997 on 4 degrees of freedom
Multiple R-squared:  0.9681,    Adjusted R-squared:  0.9601 
F-statistic: 121.4 on 1 and 4 DF,  p-value: 0.0003855

Podemos observar que el coeficiente del intercepto es lo suficientemente pequeño por lo que podemos decir que las ganancias estan bien explicadas. También tenemos que el el coeficiente de la variable mes es significativo en un 0% siendo esto muy bueno. El R-squared ajustado es 0.9601, el modelo es bueno pero no es el más ideal.

Analizando los Residuos:

​	mean(residuals)
​		[1] 9.2496e-18
​	sum(residuals)
​		[1] 5.551115e-17

La media de los errores es cero y la suma de los errores es cero.

​	shapiro.test(residuals)

​					Shapiro-Wilk normality test

​		data:  residuals
​		W = 0.93943, p-value = 0.6546

El valor de p-value es 0.6546 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.3762, p-value = 0.04593
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.04593 menor que 0.05 por lo que no podemos afirmar que los errores son independientes. Por tanto no se cumplen los supuestos.

LLegamos a la conclusión de que el mejor modelo de regresión lineal para explicar el comportamiento de las ganancias es: ganancias  = $-1.791*10^{-16} + 9.755 *10^{-1}mesT$.

##### Ejercicio 3:

Tabla de correlacion de las variables.

|           | TV         | radio      | newspaper  | sales     |
| :-------: | ---------- | ---------- | ---------- | --------- |
|    TV     | 1.0000000  | 0.05480866 | 0.05664787 | 0.7822244 |
|   radio   | 0.05480866 | 1.0000000  | 0.35410375 | 0.5762226 |
| newspaper | 0.05664787 | 0.35410375 | 1.0000000  | 0.2282990 |
|   sales   | 0.78222442 | 0.57622257 | 0.22829903 | 1.0000000 |

​	Podemos notar q no hay correlación entre ninguna de las variables TV, radio y newspaper.

Modelo encontrado con todas las variables:

​	sales = $\beta_0 + \beta_1TV + \beta_2radio + \beta_3newspaper+e$.

Residuals

|   Min   | 1Q      | Median | 3Q     | Max    |
| :-----: | ------- | ------ | ------ | ------ |
| -8.8277 | -0.8908 | 0.2418 | 1.1893 | 2.8292 |

Coefficients:

|             | Estimate  | Std. Error | t value | Pr(>\|t\|) |
| :---------: | --------- | ---------- | ------- | ---------- |
| (Intercept) | 2.938889  | 0.311908   | 9.422   | <2e-16 *** |
|     TV      | 0.045765  | 0.001395   | 32.809  | <2e-16 *** |
|    radio    | 0.188530  | 0.008611   | 21.893  | <2e-16 *** |
|  newspaper  | -0.001037 | 0.005871   | -0.177  | 0.86       |

​	Podemos ver que el valor del intercepto no es alto pero no es 0, esto indica que podrían haber otros factores que no se están teniendo en cuenta, lo cual no es muy deseable. Además notamos que el coeficiente de newspaper esta por debajo de 0.05 lo cual indica que no aporta mucho al modelo, por lo que podríamos probar con un modelo sin esta.



Residual standard error: 1.686 on 196 degrees of freedom
Multiple R-squared:  0.8972,    Adjusted R-squared:  0.8956 
F-statistic: 570.3 on 3 and 196 DF,  p-value: < 2.2e-16

​	De estos valores podemos ver que el R-squared es 0.8956 que esta por encima de 0.70 por lo que indica que el modelo es bueno. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo no está mal.

Analizando los Residuos:

​	mean(residuals)
​		[1] 3.009962e-17
​	sum(residuals)
​		[1] 6.036838e-15



![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/Tvradionewspaper.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.13197, p-value = 0.001887
​		alternative hypothesis: two-sided

El valor de p-value es 0.001887 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal.

modelo:

​	sales = $\beta_0 + \beta_1TV + \beta_2radio +e$.

Residuals

|   Min   | 1Q      | Median | 3Q     | Max    |
| :-----: | ------- | ------ | ------ | ------ |
| -8.7977 | -0.8752 | 0.2422 | 1.1708 | 2.8328 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|) |
| :---------: | -------- | ---------- | ------- | ---------- |
| (Intercept) | 2.92110  | 0.29449    | 9.919   | <2e-16 *** |
|     TV      | 0.04575  | 0.00139    | 32.909  | <2e-16 *** |
|    radio    | 0.18799  | 0.00804    | 23.382  | <2e-16 *** |

​	Después de ver este resultado notamos que el valor del intercepto es menor pero no es mucha la diferencia.



Residual standard error: 1.686 on 196 degrees of freedom
Multiple R-squared:  0.8972,    Adjusted R-squared:  0.8956 
F-statistic: 570.3 on 3 and 196 DF,  p-value: < 2.2e-16

​	De estos valores podemos ver que el R-squared es 0.8956 que esta por encima de 0.70 por lo que indica que el modelo es bueno. También podemos notar que el p-value es menor que 0.05.



Analizando los Residuos:

​	mean(residuals)
​		[1] -1.3726e-18
​	sum(residuals)
​		[1] -3.053113e-16

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/TVradio.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.12531, p-value = 0.003744
​		alternative hypothesis: two-sided

​	El valor de p-value es 0.003744 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal. Era de esperarse dado que la variable newspaper no aportaba mucho. 

Ahora vamos a probar con los modelos teniendo en cuenta 1 sola variable y el modelo multiplicandolas todas.

modelo:

​	sales = $\beta_0 + \beta_1TV +e$.

Residuals

|   Min   | 1Q      | Median  | 3Q     | Max    |
| :-----: | ------- | ------- | ------ | ------ |
| -8.3860 | -1.9545 | -0.1913 | 2.0671 | 7.2124 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|) |
| :---------: | -------- | ---------- | ------- | ---------- |
| (Intercept) | 7.032594 | 0.457843   | 15.36   | <2e-16 *** |
|     TV      | 0.047537 | 0.002691   | 17.67   | <2e-16 *** |



Residual standard error: 3.259 on 198 degrees of freedom
Multiple R-squared:  0.6119,    Adjusted R-squared:  0.6099 
F-statistic: 312.1 on 1 and 198 DF,  p-value: < 2.2e-16

​	De estos valores podemos ver que el R-squared es 0.6099 que no esta por encima de 0.70 por lo que indica que el modelo es muy malo. 	



Analizando los Residuos:

​	mean(residuals)
​		[1] -6.464447e-17
​	sum(residuals)
​		[1] -1.301736e-14

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/TV.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.041533, p-value = 0.8806
​		alternative hypothesis: two-sided

​	El valor de p-value es 0.8806 > 0.05 por lo que podemos decir que los errores siguen una distribución normal. 

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.9347, p-value = 0.3213
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.3213 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 48.038, df = 1, p-value = 4.18e-12

Como el p-value es 4.18e-12 que es mucho menor que 0.05 podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad no se mantiene.



modelo:

​	sales = $\beta_0 + \beta_1radio +e$.

Residuals

|   Min    | 1Q      | Median | 3Q     | Max    |
| :------: | ------- | ------ | ------ | ------ |
| -15.7305 | -2.1324 | 0.7707 | 2.7775 | 8.1810 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|) |
| :---------: | -------- | ---------- | ------- | ---------- |
| (Intercept) | 9.31164  | 0.56290    | 16.542  | <2e-16 *** |
|    radio    | 0.20250  | 0.02041    | 9.921   | <2e-16 *** |



Residual standard error: 4.275 on 198 degrees of freedom
Multiple R-squared:  0.332,    Adjusted R-squared:  0.3287 
F-statistic: 98.42 on 1 and 198 DF,  p-value: < 2.2e-16

​	De estos valores podemos ver que el R-squared es 0.3287 que está muy por debajo de 0.70 por lo que indica que el modelo es muy malo. 	



Analizando los Residuos:

​	mean(residuals)
​		[1] -3.011523e-16
​	sum(residuals)
​		[1] -6.028511e-14

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/radio.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.092133, p-value = 0.06705
​		alternative hypothesis: two-sided

​	El valor de p-value es 0.06705 > 0.05 por lo que podemos decir que los errores siguen una distribución normal. 

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.9457, p-value = 0.3499
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.3499 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 36.646, df = 1, p-value = 1.417e-09

Como el p-value es 1.417e-09 que es mucho menor que 0.05 podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad no se mantiene.



modelo:

​	sales = $\beta_0 + \beta_1newspaper+e$.

Residuals

|   Min    | 1Q      | Median  | 3Q     | Max     |
| :------: | ------- | ------- | ------ | ------- |
| -11.2272 | -3.3873 | -0.8392 | 3.5059 | 12.7751 |

Coefficients:

|             | Estimate | Std. Error | t value | Pr(>\|t\|)  |
| :---------: | -------- | ---------- | ------- | ----------- |
| (Intercept) | 12.35141 | 0.62142    | 19.88   | < 2e-16 *** |
|  newspaper  | 0.05469  | 0.01658    | 3.30    | 0.00115 **  |

​	Podemos ver que el valor del intercepto es bastante alto, esto indica que gran parte de sales no esta muy bien explicada a partir de las variables independientes, lo cual no es muy deseable.



Residual standard error: 5.092 on 198 degrees of freedom
Multiple R-squared:  0.05212,    Adjusted R-squared:  0.04733 
F-statistic: 10.89 on 1 and 198DF,  p-value: 0.001148

​	De estos valores podemos ver que el R-squared es 0.04733 que esta muy por debajo de 0.70 por lo que indica que el modelo es muy malo.

Analizando los Residuos:

​	mean(residuals)
​		[1] -1.82207e-16
​	sum(residuals)
​		[1] -3.641532e-14

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/newspaper.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.079684, p-value = 0.1577
​		alternative hypothesis: two-sided

El valor de p-value es 0.1577 > 0.05 por lo que podemos decir que los errores siguen una distribución normal. 

​	dwtest(multi.fit)

​					Durbin-Watson test

​		data:  multi.fit
​		DW = 1.9834, p-value = 0.4513
​		alternative hypothesis: true autocorrelation is greater than 0	

El p-value es 0.4513 mayor que 0.05 por lo que podemos afirmar que los errores son independientes.

​	bptest(multi.fit)

​					studentized Breusch-Pagan test

​		data:  multi.fit
​		BP = 2.4717, df = 1, p-value = 0.1159

Como el p-value es 0.1159 que es mayor que 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por tanto, se cumplen todos los supuestos del modelo.



modelo:

​	sales = $\beta_0 + \beta_1(TV*radio*newspaper) +e$.

Residuals

|   Min    | 1Q      | Median  | 3Q     | Max     |
| :------: | ------- | ------- | ------ | ------- |
| -10.0586 | -1.9925 | -0.3006 | 1.8199 | 12.7511 |

Coefficients:

|             | Estimate  | Std. Error | t value | Pr(>\|t\|) |
| :---------: | --------- | ---------- | ------- | ---------- |
| (Intercept) | 1.144e+01 | 3.064e-01  | 37.35   | <2e-16 *** |
|      X      | 2.065e-05 | 1.379e-06  | 14.97   | <2e-16 *** |



Residual standard error: 4.275 on 198 degrees of freedom
Multiple R-squared:  0.531,    Adjusted R-squared:  0.5286 
F-statistic: 224.2 on 1 and 198 DF,  p-value: < 2.2e-16

​	De estos valores podemos ver que el R-squared es 0.5286 que está por debajo de 0.70 por lo que indica que el modelo es muy malo. 	



Analizando los Residuos:

​	mean(residuals)
​		[1] -2.041444e-17
​	sum(residuals)
​		[1] -4.121703e-15

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/cp7 Richard García De la Osa C412/TV*radio*newspaper.png)

​			One-sample Kolmogorov-Smirnov test

​		data:  multi.fit$residuals
​		D = 0.096055, p-value = 0.04991
​		alternative hypothesis: two-sided

​	El valor de p-value es 0.04991 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal. 

​	

Modelos analizados:

-sales = $\beta_0 + \beta_1TV + \beta_2radio + \beta_newspaper+e$. no cumple los supuestos, Adjusted R-squared:  0.8956

-sales = $\beta_0 + \beta_1TV + \beta_2radio+e$. no cumple los supuestos, Adjusted R-squared:  0.8962

-sales = $\beta_0 + \beta_1TV+e$. no cumple los supuestos, Adjusted R-squared:  0.6099

-sales = $\beta_0 + \beta_1radio+e$. no cumple los supuestos, Adjusted R-squared:  0.3287

-sales = $\beta_0 + \beta_1newspaper+e$. cumple los supuestos, Adjusted R-squared:  0.04733

-sales = $\beta_0 + \beta_1X+e, X = (TV*radio*newspaper)$. no cumple los supuestos, Adjusted R-squared:  0.5286

El modelo con mejor R-squared ajustado es el de sales = $\beta_0 + \beta_1TV + \beta_2radio$, que quedaría $2.92110 + 0.04575*TV + 0.18799*radio$