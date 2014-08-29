# This imports all the layers for "bouncyFace" into bouncyfaceLayers
bouncyface = Framer.Importer.load "imported/bouncyFace"

# So to hide the layer for a group named "myFace" you can do:
# bouncyface.myFace.visible = false

# bouncyface.myFace.animate
# 	properties:
# 		x:400
# 	curve: "spring()"

bouncyface.myFace.draggable.enabled = true

bouncyface.myFace.states.add
	one: {x:0, y:0}

bouncyface.myFace.states.animationOptions =
	curve: "spring(500, 12, 0)"

bouncyface.myFace.on Events.DragEnd, ->
	bouncyface.myFace.states.next("default")


