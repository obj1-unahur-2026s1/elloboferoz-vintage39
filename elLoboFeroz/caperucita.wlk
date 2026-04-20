object caperucita {
  var manzanas = 6

  /*
   Caperucita es distraída y mientras cruza el bosque 
   se le caen manzanas, pesando cada vez menos.
   */
  method perderManzana() {
    manzanas = (manzanas - 1)
  }

  method peso() = 60 + (manzanas * 0.2)
}

object abuela {
  /*
    La abuela tiene un peso fijo. 
    Es el objetivo principal del lobo al principio.
   */
  method peso() = 50
}

object cazador {
  /*
    El cazador es grandote y lleva equipo pesado.
    Su sola presencia hace que el lobo se cague encima.
   */
  method peso() = 80

  /*
   Si el cazador encuentra al lobo, le dispara.
   El cazador tiene puntería perfecta.
   */
  method dispararA(unLobo) {
    unLobo.sufrirCrisis()
  }
}
