import fidget, fidget/openglbackend, fidget/opengl/base

loadFont("IBM Plex Sans Regular", "data/IBMPlexSans-Regular.ttf")
loadFont("IBM Plex Sans Bold", "data/IBMPlexSans-Bold.ttf")

import tables, typography, chroma
var font = fonts["IBM Plex Sans Regular"]
font.size = 20
font.lineHeight = 20
assert font.getGlyphImage("Q").data == @[255.uint8, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0,
255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 35, 255, 255, 255, 63, 255, 255, 255, 63,
255, 255, 255, 44, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0,
255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 51, 255, 255, 255, 199, 255, 255, 255, 255, 255, 255, 255,
255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 217, 255, 255, 255, 70, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 57, 255, 255, 255, 245, 255, 255, 255, 237, 255, 255, 255, 120, 255, 255, 255, 63, 255, 255, 255, 63, 255, 255, 255, 101, 255, 255, 255, 226, 255, 255, 255, 254, 255, 255, 255, 85, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 4, 255, 255, 255, 218, 255, 255, 255, 233, 255, 255, 255, 34, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255,
255, 0, 255, 255, 255, 0, 255, 255, 255, 16, 255, 255, 255, 214, 255, 255, 255, 241, 255, 255, 255, 20, 255, 255, 255, 0, 255, 255, 255, 80, 255,
255, 255, 255, 255, 255, 255, 105, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 65, 255, 255, 255, 255, 255, 255, 255, 120, 255, 255, 255, 0, 255, 255, 255, 152, 255, 255, 255, 255, 255, 255, 255, 22, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 236, 255, 255, 255, 193, 255, 255, 255, 0, 255, 255, 255, 194, 255, 255, 255, 247, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255,
255, 206, 255, 255, 255, 235, 255, 255, 255, 0, 255, 255, 255, 211, 255,
255, 255, 244, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255,
255, 255, 0, 255, 255, 255, 204, 255, 255, 255, 252, 255, 255, 255, 0, 255, 255, 255, 209, 255, 255, 255, 244, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0,
255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 204, 255, 255, 255, 250, 255, 255, 255, 0, 255, 255, 255, 188, 255, 255, 255, 249, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 209, 255, 255, 255, 229, 255, 255, 255, 0, 255, 255, 255, 142, 255, 255, 255, 255, 255, 255, 255, 35, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 5, 255, 255, 255, 244, 255, 255, 255, 184, 255, 255, 255, 0, 255,
255, 255, 62, 255, 255, 255, 255, 255, 255, 255, 131, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 91, 255, 255, 255, 255, 255, 255, 255, 107, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 193, 255, 255, 255,
248, 255, 255, 255, 71, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 46, 255, 255, 255, 236, 255, 255, 255, 227, 255, 255, 255, 11, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 30, 255, 255, 255, 224, 255, 255, 255, 255, 255, 255, 255, 172, 255, 255, 255, 127, 255, 255, 255, 127, 255, 255, 255, 157, 255, 255, 255, 249, 255, 255, 255, 240, 255, 255, 255, 54, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 19, 255, 255, 255, 147, 255, 255, 255, 237, 255, 255, 255, 255, 255, 255, 255, 255, 255,
255, 255, 246, 255, 255, 255, 163, 255, 255, 255, 32, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 147, 255, 255, 255, 255, 255, 255, 255, 5, 255, 255, 255, 0, 255, 255, 255, 0,
255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 145, 255, 255, 255, 255, 255, 255, 255, 67, 255, 255, 255, 63, 255, 255, 255, 10, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255,
0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 67, 255, 255, 255, 250, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 40, 255, 255, 255, 0, 255, 255,
255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 18, 255, 255, 255, 63, 255, 255, 255, 63, 255, 255, 255, 10, 255, 255, 255, 0, 255, 255, 255, 0, 255, 255, 255, 0]



var
  textInputVar = ""
  checkBoxValue: bool
  radioBoxValue: bool
  selectedTab = "Controls"

proc basicText() =

  frame "basicText":
    box 130, 0, 400, 185
    constraints cMin, cMin
    fill "#FFFFFF"
    cornerRadius 0
    strokeWeight 1
    rectangle "bg":
      box 0, 0, 400, 185
      constraints cMin, cMin
      fill "#FFFFFF"
      cornerRadius 0
      strokeWeight 1
    text "∑":
      box 22, 122, 17, 42
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 0
      font "IBM Plex Sans Regular", 32, 200, 0, hLeft, vTop
      characters "∑"
    text "∞":
      box 25, 118, 19, 16
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 0
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vTop
      characters "∞"
    group "label":
      box 20, 15, 100, 30
      text "Bold Title":
        box 0, 0, 100, 30
        constraints cMin, cMin
        fill "#46607e"
        strokeWeight 1
        font "IBM Plex Sans Bold", 12, 200, 0, hLeft, vCenter
        characters "Bold Title"
    group "label":
      box 20, 45, 362, 74
      text "p":
        box 0, 0, 362, 74
        constraints cMin, cMin
        fill "#46607e"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vTop
        lineHeight 16
        characters "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vestibulum nunc quis velit euismod, a laoreet dolor efficitur. Proin et tincidunt ipsum. Fusce dapibus justo a ante commodo pellentesque. "
    group "label":
      box 157, 151, 225, 19
      text "p":
        box 0, 0, 225, 19
        constraints cMax, cMax
        fill "#46607e"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hRight, vTop
        characters "- Velit Euismod"
    text "n=0":
      box 21, 160, 25, 13
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 10, 200, 0, hLeft, vTop
      characters "n=0"
    text "x":
      box 40, 130, 12, 29
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 22, 200, 0, hLeft, vTop
      characters "x"
    text "n":
      box 50, 125, 8, 18
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 14, 200, 0, hLeft, vTop
      characters "n"
    text "=":
      box 65, 135, 10, 21
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 16, 200, 0, hLeft, vTop
      characters "="
    text "1":
      box 98, 128, 9, 18
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 14, 200, 0, hLeft, vTop
      characters "1"
    text "1 - x":
      box 88, 148, 39, 18
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 14, 200, 0, hLeft, vTop
      characters "1 - x"
    rectangle "Rectangle 9":
      box 86, 146, 34, 2
      constraints cMin, cMin
      fill "#46607e"
      cornerRadius 0
      strokeWeight 1

proc basicControls() =
  group "progress":
    box 260, 149, 250, 12
    rectangle "bg":
      box 0, 0, 250, 12
      constraints cMin, cMin
      fill "#ffffff"
      stroke "#70bdcf"
      cornerRadius 5
      strokeWeight 1
    rectangle "fill":
      box 2, 2, 189, 8
      constraints cMin, cMin
      fill "#9fe7f8"
      cornerRadius 5

  group "dropdown":
    box 260, 115, 100, 20
    rectangle "bg":
      box 0, 0, 100, 20
      constraints cMin, cMin
      fill "#72bdd0"
      cornerRadius 5
      strokeWeight 1
    instance "arrow":
      box 80, 0, 20, 20
      constraints cMin, cMin
      #image "arrow.png"
    text "text":
      box 0, 0, 80, 20
      constraints cMin, cMin
      fill "#ffffff"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
      characters "Dropdown"

  group "checkbox":
    box 152, 85, 91, 20
    onClick:
      checkBoxValue = not checkBoxValue
    rectangle "square":
      box 0, 2, 16, 16
      constraints cMin, cMin
      if checkBoxValue:
        fill "#9FE7F8"
      else:
        fill "#ffffff"
      stroke "#70bdcf"
      cornerRadius 5
      strokeWeight 1
    text "text":
      box 21, 0, 70, 20
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
      characters "Checkbox"

  group "radiobox":
    box 152, 115, 91, 20
    onClick:
      radioBoxValue = not radioBoxValue
    rectangle "circle":
      box 0, 2, 16, 16
      constraints cMin, cMin
      if radioBoxValue:
        fill "#9FE7F8"
      else:
        fill "#ffffff"
      stroke "#72bdd0"
      cornerRadius 8
      strokeWeight 1
    text "text":
      box 21, 0, 70, 20
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
      characters "Radiobox"

  group "slider":
    box 260, 90, 250, 10
    rectangle "bg":
      box 0, 3, 250, 4
      constraints cMin, cMin
      fill "#c2e3eb"
      cornerRadius 2
      strokeWeight 1
    rectangle "fill":
      box 0, 3, 91, 4
      constraints cMin, cMin
      fill "#70bdcf"
      cornerRadius 2
      strokeWeight 1
    rectangle "pip":
      box 89, 0, 10, 10
      constraints cMin, cMin
      fill "#72bdd0"
      cornerRadius 5

  group "segmentedContorl":
    box 260, 55, 250, 20
    rectangle "bg":
      box 0, 0, 250, 20
      constraints cMin, cMin
      fill "#72bdd0"
      cornerRadius 5
      strokeWeight 1
    group "Button":
      box 190, 0, 60, 20
      text "text":
        box 0, 0, 60, 20
        constraints cMin, cMin
        fill "#ffffff"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
        characters "button"
    rectangle "seperator":
      box 189, 0, 1, 20
      constraints cMin, cMin
      fill "#ffffff", 0.5
      cornerRadius 0
      strokeWeight 1
    group "Button":
      box 110, 0, 80, 20
      text "text":
        box 0, 0, 80, 20
        constraints cMin, cMin
        fill "#ffffff"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
        characters "segmented"
    rectangle "seperator":
      box 109, 0, 1, 20
      constraints cMin, cMin
      fill "#ffffff", 0.5
      cornerRadius 0
      strokeWeight 1
    group "Button":
      box 80, 0, 30, 20
      text "text":
        box 0, 0, 30, 20
        constraints cMin, cMin
        fill "#ffffff"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
        characters "a"
    rectangle "seperator":
      box 79, 0, 1, 20
      constraints cMin, cMin
      fill "#ffffff", 0.5
      cornerRadius 0
      strokeWeight 1
    group "Button":
      box 50, 0, 30, 20
      text "text":
        box 0, 0, 30, 20
        constraints cMin, cMin
        fill "#ffffff"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
        characters "is"
    rectangle "seperator":
      box 49, 0, 1, 20
      constraints cMin, cMin
      fill "#ffffff", 0.5
      cornerRadius 0
      strokeWeight 1
    group "Button":
      box 0, 0, 49, 20
      rectangle "hover":
        box 0, 0, 49, 20
        constraints cMin, cMin
        fill "#ffffff", 0.5699999928474426
        strokeWeight 1
      text "text":
        box 0, 0, 49, 20
        constraints cMin, cMin
        fill "#46607e"
        strokeWeight 1
        font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
        characters "This"
  group "button":
    box 150, 55, 90, 20
    rectangle "bg":
      box 0, 0, 90, 20
      constraints cMin, cMin
      cornerRadius 5
      fill "#72bdd0"
      onHover:
        fill "#5C8F9C"
      onDown:
        fill "#3E656F"
      strokeWeight 1
    text "text":
      box 0, 0, 90, 20
      constraints cMin, cMin
      fill "#ffffff"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hCenter, vCenter
      characters "Button"
  group "input":
    box 260, 15, 250, 30
    rectangle "bg":
      box 0, 0, 250, 30
      constraints cMin, cMin
      fill "#ffffff", 0.3700000047683716
      stroke "#72bdd0"
      cornerRadius 5
      strokeWeight 1
    text "text":
      box 9, 8, 232, 15
      constraints cMin, cMin
      highlightColor "#E5F7FE"
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
      binding textInputVar
    text "textPlaceholder":
      box 9, 8, 232, 15
      constraints cMin, cMin
      highlightColor "#E5F7FE"
      fill "#72bdd0", 0.5
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
      if textInputVar == "":
        characters "Start typing here"
  group "label":
    box 150, 15, 100, 30
    text "Text field:":
      box 0, 0, 100, 30
      constraints cMin, cMin
      fill "#46607e"
      strokeWeight 1
      font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
      characters "Text field:"

proc drawMain() =
  setTitle("Fidget Example")

  component "iceUI":
    orgBox 0, 0, 530, 185
    box root.box
    constraints cMin, cMin
    rectangle "bg":
      box 0, 0, 530, 185
      constraints cMin, cMin
      fill "#ffffff"
      cornerRadius 0
      strokeWeight 1

    group "verticalTabs":
      box 0, 0, 130, 185
      constraints cMin, cStretch
      rectangle "bg":
        box 0, 0, 130, 185
        constraints cMin, cStretch
        fill "#e5f7fe"
        cornerRadius 0
        strokeWeight 1
      group "tab":
        box 0, 105, 130, 30
        text "Constraints":
          box 25, 0, 105, 30
          constraints cMin, cMin
          fill "#46607e"
          strokeWeight 1
          font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
          characters "Constraints"
      group "tab":
        box 0, 75, 130, 30
        text "text":
          box 25, 0, 105, 30
          constraints cMin, cMin
          fill "#46607e"
          strokeWeight 1
          font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
          characters "Image"
      group "tab":
        box 0, 45, 130, 30
        onClick:
          selectedTab = "Text"
        text "text":
          box 25, 0, 105, 30
          constraints cMin, cMin
          fill "#46607e"
          strokeWeight 1
          font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
          characters "Text"
      group "tab":
        box 0, 15, 130, 30
        onClick:
          selectedTab = "Controls"
        rectangle "hover":
          box 0, 0, 130, 30
          constraints cMin, cMin
          fill "#70bdcf"
          cornerRadius 0
          strokeWeight 1
        text "text":
          box 25, 0, 105, 30
          constraints cMin, cMin
          fill "#ffffff"
          strokeWeight 1
          font "IBM Plex Sans Regular", 12, 200, 0, hLeft, vCenter
          characters "Contorls"

    case selectedTab:
      of "Controls":
        basicControls()
      of "Text":
        basicText()

    group "shadow":
      box 0, 0, 530, 3
      constraints cStretch, cMin
      rectangle "l1":
        box 0, 0, 530, 1
        constraints cStretch, cMin
        fill "#000000", 0.10000000149011612
        cornerRadius 0
        strokeWeight 1
      rectangle "l2":
        box 0, 1, 530, 1
        constraints cStretch, cMin
        fill "#000000", 0.07000000029802322
        cornerRadius 0
        strokeWeight 1
      rectangle "l3":
        box 0, 2, 530, 1
        constraints cStretch, cMin
        fill "#000000", 0.029999999329447746
        cornerRadius 0
        strokeWeight 1

startFidget(drawMain)