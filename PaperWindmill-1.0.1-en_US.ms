-- ************************************************
-- * PaperWindmill v1.0.1
-- * Powered by 沐风课堂 (http://www.bbvbb.com/)
-- * Date: 2017-02-06
-- ************************************************

try (
--------- General Parameters ---------
rollout PGeneral "Parameters"
(
	groupbox groupboxParameters "Parameters" width:152 height:112 pos:[10,5]
		spinner sizeNum "Size：" width:90 height:16 range:[10.0,1000.0,100.0] type:#float pos:[45,25]
		spinner heiNum "Height：" width:90 height:16 range:[1.0,1000.0,30.0] type:#float pos:[45,46]
		spinner smoothNum "Smooth：" width:90 height:16 range:[1,10,2] type:#integer pos:[45,67]
		colorPicker cpA "Color：" fieldWidth:16 height:16 color:[255,150,0] pos:[45,88]
	
	groupbox groupboxGeneration "Generation" width:152 height:85 pos:[10,120]
		button btnGenerate "Generate" width:120 height:24 pos:[26,140]
		progressbar progBar width:130 height:6 value:0 pos:[20,170]
		label progLabel " Ready..." style_sunkenedge:true width:130 height:16 offset:[0,-3]

-- 生成按钮
on btnGenerate pressed do
	(
	startTime = timeStamp()
	progBar.value  = 0.00 * 100 --0%
	progLabel.text = " Building..."
	bei = sizeNum.value/100
	
	PWindmill = Box lengthsegs:2 widthsegs:2 heightsegs:2 length:sizeNum.value width:sizeNum.value height:heiNum.value mapcoords:on pos:[0,0,0] isSelected:on
	PWindmill.wirecolor = cpA.color
	macros.run "Modifier Stack" "Convert_to_Poly"
progBar.value  = 0.10 * 100 --10%
	subobjectLevel = 1
	PWindmill.EditablePoly.SetSelection #Vertex #{14, 16}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{14, 18}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{12, 14}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{10, 14}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{1, 5}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{3, 5}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{5, 9}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{5, 7}
	PWindmill.EditablePoly.ConnectVertices ()
progBar.value  = 0.20 * 100 --20%
	subobjectLevel = 2
	PWindmill.EditablePoly.divideEdge 49 0.5 select:on
	PWindmill.EditablePoly.divideEdge 50 0.5 select:on
	PWindmill.EditablePoly.divideEdge 51 0.5 select:on
	PWindmill.EditablePoly.divideEdge 52 0.5 select:on
	PWindmill.EditablePoly.divideEdge 53 0.5 select:on
	PWindmill.EditablePoly.divideEdge 54 0.5 select:on
	PWindmill.EditablePoly.divideEdge 55 0.5 select:on
	PWindmill.EditablePoly.divideEdge 56 0.5 select:on
progBar.value  = 0.30 * 100 --30%
	subobjectLevel = 1
	PWindmill.EditablePoly.SetSelection #Vertex #{13, 27}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{17, 27}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{17, 28}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{15, 28}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{15, 29}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{11, 29}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{11, 30}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{13, 30}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{4, 31}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{31}
	PWindmill.EditablePoly.SetSelection #Vertex #{2, 31}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{2, 32}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{6, 32}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{6, 33}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{8, 33}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{8, 34}
	PWindmill.EditablePoly.ConnectVertices ()
	PWindmill.EditablePoly.SetSelection #Vertex #{4, 34}
	PWindmill.EditablePoly.ConnectVertices ()
progBar.value  = 0.40 * 100 --40%
	subobjectLevel = 4
	PWindmill.EditablePoly.SetSelection #Face #{1, 5..7, 9..28, 34..36, 38, 40, 44, 46, 48}
	PWindmill.EditablePoly.delete #Face
progBar.value  = 0.50 * 100 --50%
	PWindmill.EditablePoly.SetSelection #Face #{4}
	PWindmill.EditablePoly.detachToElement #Face keepOriginal:off
	move PWindmill.selectedFaces [0,0,1*bei]
	PWindmill.EditablePoly.SetSelection #Face #{10}
	PWindmill.EditablePoly.detachToElement #Face keepOriginal:off
	move PWindmill.selectedFaces [0,0,2*bei]
	PWindmill.EditablePoly.SetSelection #Face #{11}
	PWindmill.EditablePoly.detachToElement #Face keepOriginal:off
	move PWindmill.selectedFaces [0,0,3*bei]
progBar.value  = 0.60 * 100 --60%
	subobjectLevel = 1
	PWindmill.EditablePoly.SetSelection #Vertex #{12}
	move PWindmill.selectedVerts [10*bei,-5*bei,0]
	PWindmill.EditablePoly.SetSelection #Vertex #{23}
	move PWindmill.selectedVerts [-5*bei,-10*bei,0]
	PWindmill.EditablePoly.SetSelection #Vertex #{24}
	move PWindmill.selectedVerts [-10*bei,5*bei,0]
	PWindmill.EditablePoly.SetSelection #Vertex #{25}
	move PWindmill.selectedVerts [5*bei,10*bei,0]
progBar.value  = 0.70 * 100 --70%
	subobjectLevel = 2
	PWindmill.EditablePoly.SetSelection #Edge #{25, 36}
	PWindmill.bridgeSelected = 1
	PWindmill.EditablePoly.Bridge ()
	PWindmill.EditablePoly.SetSelection #Edge #{26, 34}
	PWindmill.bridgeSelected = 1
	PWindmill.EditablePoly.Bridge ()
	PWindmill.EditablePoly.SetSelection #Edge #{27, 32}
	PWindmill.bridgeSelected = 1
	PWindmill.EditablePoly.Bridge ()
	PWindmill.EditablePoly.SetSelection #Edge #{28, 30}
	PWindmill.bridgeSelected = 1
	PWindmill.EditablePoly.Bridge ()
progBar.value  = 0.80 * 100 --80%
	subobjectLevel = 0
	newTurbosmooth = turbosmooth iterations:smoothNum.value
	addModifier PWindmill newTurbosmooth
progBar.value  = 0.90 * 100 --90%
	converttopoly PWindmill

	endTime = timeStamp()
	progBar.value  = 1.00 * 100 --100%
	progLabel.text =  (" Total time：" + (((endTime - startTime) / 1000.0) as string) + " s")

	)
)

--------- Powered by ---------
rollout PPower "Powered by bbvbb.com"
(
	HyperLink helpLink "Help" width:22 height:15 address:"http://www.bbvbb.com/software.php?mod=paperwindmill" pos:[10,10]
	HyperLink siteLink "Bbvbb.com" width:161 height:15 address:"http://www.bbvbb.com/" across:2 pos:[40,10]
)

	mainWindow = newRolloutFloater "PaperWindmill v1.0.1" 184 257
	addRollOut PGeneral mainWindow
	addRollOut PPower mainWindow
	PPower.open = false
) catch (messagebox "Something bad happened.  Canceling...")