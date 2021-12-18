

### Proyecto Estadística Descriptiva fase 2

C-412 Richard Garcı́a De la Osa.
richard.garcia@estudiantes.matcom.uh.cu
C-412 Andy A. Castañeda Guerra.
andy.castaneda@estudiantes.matcom.uh.cu
C-411 Adrian Hernández Pérez.
a.hernandez3@estudiantes.matcom.uh.cu

##### Inciso a, parte 1:

Tabla de correlacion de las variables.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/matris de correlacion/Screenshot from 2021-12-17 21-19-53.png)

Podemos ver que existe dependencia lineal entre las variables.



__Modelo encontrado con todas las variables:__

__Modelo:__

​	$Vertical~(Max~Reach) = \beta_0 + \beta_1Standing~reach + \beta_2Vertical~(Max)+e$.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-31-05.png)



​	Podemos ver que el valor del intercepto es alto, esto indica que gran parte del Vertical (Max Reach) no está muy bien explicada a partir de las variables independientes, lo cual no es muy deseable. Además notamos que los valores de Pr(>|t|) para todas son menores que 0.05.

​	De estos valores podemos ver que el R-squared es 0.8582 que está por encima de 0.70 por lo que indica que el modelo es bueno, sumando esto a que el valor del intercepto es malo podría indicar que necesitamos considerar otros factores. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo no está mal.

Analizando los Residuos:

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-29-18.png)

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-30-39.png)

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-29-47.png)

El valor de p-value es 3.045e-08 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal(Falla).

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-30-23.png)

El p-value es 0.8654 > 0.05 por lo que podemos afirmar que los errores son independientes.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Standing_reach+Vertical_Max/Screenshot from 2021-12-17 21-30-11.png)

Como el p-value es 0.6145 > 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por lo visto, no se cumplen todos los supuestos del modelo.



__Modelo:__	

$Vertical~(Max~Reach) = \beta_0 + \beta_1Height~(No~Shoes) + \beta_2Height..(With~Shoes)+\beta_3Standing~reach+\beta_4Vertical~(Max)$

$+\beta_5Vertical~(No~Step)+e$.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-43-04.png)



​	Podemos ver que el valor del intercepto no es muy alto, esto indica que parte del Vertical (Max Reach) no está muy bien explicada a partir de las variables independientes, lo cual no es muy deseable. Además notamos que los valores de Pr(>|t|) para algunos son menores que 0.05 y para otros mayores.

​	De estos valores podemos ver que el R-squared es 0.8865 que está por encima de 0.70 por lo que indica que el modelo es bueno, sumando esto a que el valor del intercepto no es muy bueno podría indicar que necesitamos considerar otros factores. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo no está mal.

Analizando los Residuos:

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-40-32.png)

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-42-05.png)

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-41-00.png)

El valor de p-value es 0.0002441 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal(Falla).

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-41-53.png)

El p-value es 0.6313 > 0.05 por lo que podemos afirmar que los errores son independientes.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step/Screenshot from 2021-12-17 21-41-31.png)

Como el p-value es 0.6088 > 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por lo visto, no se cumplen todos los supuestos del modelo.



__Modelo:__	

$Vertical~(Max~Reach) = \beta_0 + \beta_1Height~(No~Shoes) + \beta_2Height..(With~Shoes)+\beta_3Standing~reach+\beta_4Vertical~(Max)$

$+\beta_5Vertical~(No~Step)+\beta_6Vertical~(No~Step~Reach)+e$.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-51-12.png)



​	Podemos ver que el valor del intercepto es bastante bajo, esto indica que gran parte del Vertical (Max Reach) está muy bien explicada a partir de las variables independientes, lo cual es muy deseable. Además notamos que los valores de Pr(>|t|) para algunos son menores que 0.05 y para otros mayores.

​	De estos valores podemos ver que el R-squared es 0.9999 que está por encima de 0.70 y es casi 1 lo que indica que el modelo es muy bueno. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo está bien.

Analizando los Residuos:

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-49-51.png)

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-51-00.png)

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-50-16.png)

El valor de p-value es 4.178e-12 < 0.05 por lo que no podemos decir que los errores siguen una distribución normal(Falla).

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-50-46.png)

El p-value es 0.8062 > 0.05 por lo que podemos afirmar que los errores son independientes.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Height_No_Shoes+Height_With_Shoes+Standing_reach+Vertical_Max+Vertical_No_Step+Vertical_No_Step_Reach/Screenshot from 2021-12-17 21-50-36.png)

Como el p-value es 0.2764 > 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por lo visto, no se cumplen todos los supuestos del modelo.



__Modelo:__	

$Vertical~(Max~Reach)=\beta_0+\beta_1Vertical(No~Step~Reach)+\beta_2Vertical~(Max)+e$.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-55-47.png)



​	Podemos ver que el valor del intercepto no es muy baj, lo que indica que gran parte del Vertical (Max Reach) puede no estar muy bien explicada a partir de las variables independientes, lo cual no es muy deseable. Además notamos que los valores de Pr(>|t|) para uno es menor que 0.05 y para el otro es mayor.

​	De estos valores podemos ver que el R-squared es 0.8914 que está por encima de 0.70 lo que indica que el modelo es bueno. También podemos notar que el p-value es menor que 0.05 lo que indica que nuestro modelo está bien.

Analizando los Residuos:

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-54-43.png)

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-55-36.png)

La media de los errores es cero y la suma de los errores es cero.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-55-02.png)

El valor de p-value es 0.5286 > 0.05 por lo que podemos decir que los errores siguen una distribución normal.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-55-24.png)

El p-value es 0.6693 > 0.05 por lo que podemos afirmar que los errores son independientes.

![drag-img](/home/regnod/Documents/4to/estadistica/Proyecto fase 2/inciso a parte 1/Vertical_No_Step_Reach+Vertical_Max/Screenshot from 2021-12-17 21-55-14.png)

Como el p-value es 0.1706 > 0.05 no podemos rechazar la heterocedasticidad. Por lo que el supuesto de Homocedasticidad se mantiene.

Por lo visto, se cumplen todos los supuestos del modelo.



Modelos analizados:

$-Vertical~(Max~Reach) = \beta_0 + \beta_1Standing~reach + \beta_2Vertical~(Max)+e$. No cumple los supuestos, Adjusted R-squared:  0.8582.

$-Vertical~(Max~Reach) = \beta_0 + \beta_1Height~(No~Shoes) + \beta_2Height~(With~Shoes)+\beta_3Standing~reach+\beta_4Vertical~(Max)$

$+\beta_5Vertical~(No~Step)+e$. No cumple los supuestos, Adjusted R-squared:  0.8865.

$-Vertical~(Max~Reach) = \beta_0 + \beta_1Height~(No~Shoes) + \beta_2Height..(With~Shoes)+\beta_3Standing~reach+\beta_4Vertical~(Max)$

$+\beta_5Vertical~(No~Step)+\beta_6Vertical~(No~Step~Reach)+e$. No se cumplen los supuestos, $~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~$Adjusted R-squared:  0.9999.

$-Vertical~(Max~Reach)=\beta_0+\beta_1Vertical(No~Step~Reach)+\beta_2Vertical~(Max)+e$. Se cumplen los supuestos, Adjusted R-squared:  0.8914.

El modelo con mejor R-squared ajustado es el de:

$Vertical~(Max~Reach)=\beta_0+\beta_1Vertical(No~Step~Reach)+\beta_2Vertical~(Max)+e$.

Quedaría $Vertical~Max~Reach)=10.88442+0.86494*Vertical(No~Step~Reach)+0.35319*Vertical~(Max)$.