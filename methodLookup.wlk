class A {

    const miAtributo = "x"

    method magia(parametro) {
        return "magiaA " + miAtributo + " " + self.masMagia() + parametro
    }
    method masMagia() {
        return "masMagiaA"
    }
}

class B inherits A(miAtributo="z") {
    override method magia(parametro) {
        return "magia B " + miAtributo
    }
}

class C inherits A(miAtributo="c") {
    override method masMagia() {
        return "masMagiaC"
    }
}

class D inherits C {
    override method magia(parametro) {
       return super(10) + " CC " 
    }
}

class E inherits D {

}





//1- Hacer clase A y B que hereda de A. hacer C que no hereda, método magia  solo en A
//2 - Poner un atributo en A y usarlo en magia
//3 - Sobreescribir el método magia en B
//4 - Hacer que magic invoque a masMagia
//5 - Clase C hereda de A y sobreescribre masMagia
//6 - Clase D que hereda de C y hace super en magia()
//7 - sobreescrir mas magia en D
//8 - Agregar un parametro a magia,
//9 - Mostrar de pasar en el super una cuenta sobre el parametro
