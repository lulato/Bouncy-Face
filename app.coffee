# this was an example given at Developers Talk in Sept 2014

# This imports all the layers for "bouncyFace" into bouncyfaceLayers
bouncyface = Framer.Importer.load "imported/bouncyFace"


bouncyface.myFace.draggable.enabled = true

bouncyface.myFace.states.add
	one: {x:0, y:0}

bouncyface.myFace.states.animationOptions =
	curve: "spring(500, 12, 0)"

bouncyface.myFace.on Events.DragEnd, ->
	bouncyface.myFace.states.next("default")


