import wollok.game.*

object auto {
	var image = "autitoRojo.png"
	var position = game.center()
	const fabricante = "Xiaomi"
	
	method image(){return image}
	method position(){return position}
	method image(nuevaImagen){image = nuevaImagen}
	method position(nuevaPosicion) {position = nuevaPosicion}
	method moverseALaDerecha(){
    if (position.x() < game.width() - 1) {
        position = position.right(1)
    } else {
        position = game.at(0, position.y())
    }
}
	method moverseALaIzquierda(){
    if (position.x() > 0) {
        position = position.left(1)
    } else {
        position = game.at(game.width() - 1, position.y())
    }
}
	method moveteAbajo() {
    if (position.y() > 0) {
        position = position.down(1)
    } else {
        position = game.at(position.x(), game.height() - 1)
    }
}
	method moveteArriba(){
	 if (position.y() < game.height() - 1) {
        position = position.up(1)
    } else {
        position = game.at(position.x(), 0)
    }
}
	
}
