La técnica de reducción de dimesión empleada para clasificar los datos de los jugadores de la NBA en el año 2014 fue la **ténica jerárquica** de **clústers**.

Se consideraron todas aquellas mediciones cuantitativas que los jugadores tenían, además se omitió el análisis de las columnas vacías o parcialmente incompletas. Posteriormente, se ejecutó el algoritmo k-means con distintos valores para la cantidad de clústers creados, comenzando en 2, y analizando hasta para 5 clústers.

De todos los resultados obtenidos, elegimos el más razonable, tanto por el porcentaje de similitud de los jugadores que pertenecían a las mismas categorías, como para claridad en cuanto a la interpretación que se le puede dar a los posibles *outliers* que detectamos. A continuación, la tabla:



| Cat   | Height (NoShoes) | Height (WithShoes) | Wingspan | Standing Reach | Vertical (Max) | Vertical (MaxReach) | Vertical (NoStep) |
| ----- | ---------------- | ------------------ | -------- | -------------- | -------------- | ------------------- | ----------------- |
| **1** | 80.4             | 81.72              | 86.16    | 106.27         | 34.50          | 140.77              | 29.72             |
| **2** | 74.3             | 75.78              | 79.57    | 99             | 36.47          | 135.47              | 30.60             |
| **3** | 78.4             | 79.80              | 82.88    | 103.73         | 35.21          | 138.95              | 29.59             |

| Cat   | Vertical (NoStepReach) | Weight | Body Fat | Hand Length | Hand Width | Agility | Sprint |
| ----- | ------------------------ | ------ | -------- | ----------- | ---------- | ------- | ------ |
| **1** | 136.00                   | 251.22 | 9.70     | 9.19        | 9.86       | 11.58   | 3.37   |
| **2** | 129.60                   | 188.63 | 5.71     | 8.42        | 8.93       | 11.33   | 3.26   |
| **3** | 133.33                   | 218.52 | 7.21     | 8.82        | 9.11       | 11.34  | 3.31   |

**Con un porcentaje de similitud del 79.0%**



Acá se observa la clara división entre los jugadores en tres categorías. La categoría **No.1**, se trata de los jugadores más corpulentos en genral, aquellos de mayor altura, mayor envergadura de los brazos, superior alcance estando de pie, mayor peso, manos más extensas, y mayor grasa corporal. La contraparte de estos, serían los jugadores pertenecientes a la categoría **No.2**, comprendiendo aquellos más pequeños(aun así son considerablemente más altos que cualquier persona promedio), de menor extensión entre brazo y brazo, menos pesados y de menor grasa corporal, además con las manos notablemente más pequeñas, y a la vez menor alcance vertical estando de pie. Finalmente en la categoría **No.3** restante, quedarían aquellos jugadores "promedio", cuyas mediciones son intermedias, su altura no es suficiente como para estar considerados entre los más altos, pero tampoco es tan pequeña como para caer en la categoría **No.2**, igualmente con su peso, su alcance vertical sin saltar, la evergadura de sus brazos, etc.



De estos datos, cabe resaltar algunas observaciones suficientemente llamativas:

* En primer lugar, los jugadores de menor estatura son aquellos que mayor alcance vertical(Vertical Max) poseen al saltar sin contar la altura extra que le confieren sus brazos, es decir, que al saltar, son los que más elevan sus pies del suelo. Aún así, esto no es suficiente como para ser los de mayor alcance vertical al saltar si se mide la altura a la que se extienden sus brazos(Vertical Max Reach), siendo nuevamente los más modestos en este campo. Esto puede resultar intuitivo si tenemos en cuenta que estos jugadores son aquellos de menor masa y grasa corporal.
* En segundo lugar, las medidas de agilidad y velocidad de los jugadores más corpulentos y de mayor peso y grasa corporal son ligeramente superiores a las de los demás jugadores. Uno esperaría que dado que son más pesados, quizás sean también más "torpes" o lentos, sin embargo, estas medidas en los datos estudiados se mantienen bastante similares para todos los jugadores estudiados, y curiosamente, los jugadores más altos son los más ágiles y veloces, mientras que los más chicos son los menos ágiles y más lentos.