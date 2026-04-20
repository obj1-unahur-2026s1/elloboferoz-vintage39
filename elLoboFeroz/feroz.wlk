import caperucita.abuela
import caperucita.caperucita
import caperucita.cazador
object feroz {
  var peso = 10

  method pesoActual() = peso

  /*  El lobo tiene hambre y se mueve por el bosque.
    Si está entre 20 y 150 kg, se siente bien para seguir con su plan.
   */
  method estaSaludable() {
    return peso.between(20, 150)
  }

  /*
     El lobo corre, ya sea para perseguir a alguien 
    o para huir. Siempre quema energías y baja 1 kg.
   */
  method correr() {
    peso = peso - 1
  }
 method sufrirCrisis() {
    peso = 10
  }
  /*
   * El lobo encuentra algo y decide comerlo.
   * Suma el 10% del peso de lo que come
   */
  method comer(comida) {
    peso = peso + (comida.peso() * 0.1)
  }

  /*
    El lobo ve a alguien. Si es el cazador se caga encima y
    entra en crisis.
    Si es la abuela le agarra hambre y corre como loco para alcanzarla.
   */
  method veA(personaje) {
    if (personaje == cazador) {
       self.sufrirCrisis() 
    }
    if (personaje == abuela) {
       self.correr() 
      
    }
  }


 
}