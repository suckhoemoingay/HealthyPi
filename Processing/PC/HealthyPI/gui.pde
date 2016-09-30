/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void port_click(GDropList source, GEvent event) { 
  portSelected = true;
  selectedPort = portList.getSelectedText();
  println(selectedPort);
}

public void done_click(GButton source, GEvent event) { //_CODE_:done:767255:
  println("done - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:done:767255:

public void record_click(GButton source, GEvent event) { //_CODE_:record:829599:
  println("record - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:record:829599:

public void close_click(GButton source, GEvent event) {

  int dialogResult = JOptionPane.showConfirmDialog (null, "Would You Like to Close The Application?");
  if (dialogResult == JOptionPane.YES_OPTION) {
    try
    {
      Runtime runtime = Runtime.getRuntime();
      Process proc = runtime.exec("sudo shutdown -h now");
      System.exit(0);
    }
    catch(Exception e)
    {
      exit();
    }
  } else
  {
  }
}

public void imgButton1_click1(GImageButton source, GEvent event) { }

public void gridStatus_click(GButton source, GEvent event) {

  if (gStatus)
  {
    gStatus = false;
    la.setText("Grid :OFF");
  } else
  {
    gStatus = true;    
    la.setText("Grid :   ON");
  }
  la.setTextBold();
}

public void grid_size_click(GButton source, GEvent event) { //_CODE_:grid_size:862087:
  println("grid_size - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:grid_size:862087:

public void settings_click(GButton source, GEvent event) { //_CODE_:settings:946680:
  println("settings - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:settings:946680:




// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Healthy_Pi");
  portList = new GDropList(this, 5, 7, 200, 140, 3);
  portList.setItems(loadStrings("list_719422"), 0);
  portList.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  portList.addEventHandler(this, "port_click");
  done = new GButton(this, 445, 420, 100, 55);
  done.setText("DONE");
  done.setTextBold();
  done.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  done.addEventHandler(this, "done_click");
  record = new GButton(this, 445, 420, 100, 55);
  record.setText("RECORD");
  record.setTextBold();
  record.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  record.addEventHandler(this, "record_click");
  close = new GButton(this, 560, 420, 100, 55);
  close.setText("CLOSE");
  close.setTextBold();
  close.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  close.addEventHandler(this, "close_click");
  imgButton1 = new GImageButton(this, 694, 420, 100, 55, new String[] { "logo.png", "logo.png", "logo.png" } );
  imgButton1.addEventHandler(this, "imgButton1_click1");
  bpm1 = new GLabel(this, 620, 55, 139, 80);
  bpm1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  bpm1.setOpaque(false);
  SP02 = new GLabel(this, 620, 135, 139, 80);
  SP02.setOpaque(false);
  BP = new GLabel(this, 590, 210, 225, 100);
  BP.setOpaque(false);
  label1 = new GLabel(this, 570, 210, 75, 20);
  label1.setText("BP");
  label1.setTextBold();
  label1.setOpaque(false);
  label2 = new GLabel(this, 595, 130, 80, 19);
  label2.setText("SpO2      %");
  label2.setTextBold();
  label2.setOpaque(false);
  label3 = new GLabel(this, 595, 49, 30, 22);
  label3.setText("HR");
  label3.setTextBold();
  label3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label3.setOpaque(false);
  label4 = new GLabel(this, 736, 210, 80, 20);
  label4.setText("mmHg");
  label4.setTextBold();
  label4.setOpaque(false);
  label6 = new GLabel(this, 731, 51, 80, 20);
  label6.setText("bpm");
  label6.setTextBold();
  label6.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  label6.setOpaque(false);
  Temp = new GLabel(this, 690, 315, 120, 106);
  Temp.setOpaque(false);
  label9 = new GLabel(this, 590, 305, 100, 20);
  label9.setText("Respiration");
  label9.setTextBold();
  label9.setOpaque(false);
  label5 = new GLabel(this, 634, 283, 64, 19);
  label5.setText("SYS");
  label5.setTextBold();
  label5.setOpaque(false);
  label7 = new GLabel(this, 698, 283, 28, 22);
  label7.setText("DIA");
  label7.setTextBold();
  label7.setOpaque(false);
  label8 = new GLabel(this, 682, 283, 15, 19);
  label8.setText("/");
  label8.setTextBold();
  label8.setOpaque(false);
  rpm = new GLabel(this, 580, 315, 120, 106);
  rpm.setOpaque(false);
  label11 = new GLabel(this, 696, 305, 80, 20);
  label11.setText("TEMP ( ° C)");
  label11.setTextBold();
  label11.setOpaque(false);
  gridStatus = new GButton(this, 75, 420, 50, 55);
  gridStatus.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  gridStatus.addEventHandler(this, "gridStatus_click");
  grid_size = new GButton(this, 245, 420, 50, 55);
  grid_size.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  grid_size.addEventHandler(this, "grid_size_click");
  settings = new GButton(this, 310, 420, 120, 55);
  settings.setText("SETTINGS");
  settings.setTextBold();
  settings.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  settings.addEventHandler(this, "settings_click");
  la = new GLabel(this, 1, 427, 84, 46);
  la.setText("Grid :OFF");
  la.setTextBold();
  la.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  la.setOpaque(false);
  label10 = new GLabel(this, 120, 427, 129, 46);
  label10.setText("Grid Size : 12.5 mm/s");
  label10.setTextBold();
  label10.setOpaque(false);
}

// Variable declarations 
// autogenerated do not edit
GDropList portList; 
GButton done; 
GButton record; 
GButton close; 
GImageButton imgButton1; 
GLabel bpm1; 
GLabel SP02; 
GLabel BP; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GLabel label6; 
GLabel Temp; 
GLabel label9; 
GLabel label5; 
GLabel label7; 
GLabel label8; 
GLabel rpm; 
GLabel label11; 
GButton gridStatus; 
GButton grid_size; 
GButton settings; 
GLabel la; 
GLabel label10; 