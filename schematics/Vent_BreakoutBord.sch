<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="IRLZ44N">
<packages>
<package name="TO254P1054X469X1930-3">
<wire x1="-5.27" y1="-2.35" x2="5.27" y2="-2.35" width="0.127" layer="51"/>
<wire x1="5.27" y1="-2.35" x2="5.27" y2="2.35" width="0.127" layer="51"/>
<wire x1="5.27" y1="2.35" x2="-5.27" y2="2.35" width="0.127" layer="51"/>
<wire x1="-5.27" y1="2.35" x2="-5.27" y2="-2.35" width="0.127" layer="51"/>
<wire x1="5.27" y1="2.35" x2="-5.27" y2="2.35" width="0.127" layer="21"/>
<wire x1="-5.27" y1="2.35" x2="-5.27" y2="-2.35" width="0.127" layer="21"/>
<wire x1="5.27" y1="-2.35" x2="5.27" y2="2.35" width="0.127" layer="21"/>
<wire x1="-5.27" y1="-2.35" x2="5.27" y2="-2.35" width="0.127" layer="21"/>
<wire x1="-5.52" y1="2.6" x2="-5.52" y2="-2.6" width="0.05" layer="39"/>
<wire x1="-5.52" y1="-2.6" x2="5.52" y2="-2.6" width="0.05" layer="39"/>
<wire x1="5.52" y1="-2.6" x2="5.52" y2="2.6" width="0.05" layer="39"/>
<wire x1="5.52" y1="2.6" x2="-5.52" y2="2.6" width="0.05" layer="39"/>
<text x="-5.22" y="2.7" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.22" y="-4.36" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-2.54" y="-2.86" radius="0.1" width="0.2" layer="51"/>
<circle x="-2.54" y="-2.86" radius="0.1" width="0.2" layer="21"/>
<pad name="1" x="-2.54" y="-0.94" drill="1.23" diameter="1.85" shape="square"/>
<pad name="2" x="0" y="-0.94" drill="1.23" diameter="1.85"/>
<pad name="3" x="2.54" y="-0.94" drill="1.23" diameter="1.85"/>
</package>
</packages>
<symbols>
<symbol name="IRLZ44N">
<wire x1="0.762" y1="0.762" x2="0.762" y2="0" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0.762" y1="3.175" x2="0.762" y2="2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="2.54" x2="0.762" y2="1.905" width="0.254" layer="94"/>
<wire x1="0.762" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="-1.905" x2="0.762" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0.762" y1="-2.54" x2="0.762" y2="-3.175" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="0.762" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.54" x2="3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="4.572" y1="0.762" x2="4.318" y2="0.508" width="0.1524" layer="94"/>
<wire x1="4.318" y1="0.508" x2="3.81" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.81" y1="0.508" x2="3.302" y2="0.508" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.508" x2="3.048" y2="0.254" width="0.1524" layer="94"/>
<circle x="2.54" y="-2.54" radius="0.3592" width="0" layer="94"/>
<circle x="2.54" y="2.54" radius="0.3592" width="0" layer="94"/>
<text x="-8.89" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-8.89" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<polygon width="0.1524" layer="94">
<vertex x="3.81" y="0.508"/>
<vertex x="3.302" y="-0.254"/>
<vertex x="4.318" y="-0.254"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="1.016" y="0"/>
<vertex x="2.032" y="0.762"/>
<vertex x="2.032" y="-0.762"/>
</polygon>
<pin name="S" x="2.54" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="G" x="-2.54" y="-2.54" visible="off" length="short" direction="pas"/>
<pin name="D" x="2.54" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="IRLZ44N" prefix="Q">
<description>55V Single N-Channel HEXFET Power MOSFET in a TO-220AB package  &lt;a href="https://pricing.snapeda.com/parts/IRLZ44N/Infineon%20/%20IR/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="IRLZ44N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TO254P1054X469X1930-3">
<connects>
<connect gate="G$1" pin="D" pad="2"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="DESCRIPTION" value=" N-Channel 55 V 47A (Tc) 3.8W (Ta), 110W (Tc) Surface Mount D2PAK "/>
<attribute name="MF" value="Infineon / IR"/>
<attribute name="MP" value="IRLZ44N"/>
<attribute name="PACKAGE" value="TO-220-3 Infineon / IR"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/IRLZ44N/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor-sil" urn="urn:adsk.eagle:library:347">
<description>&lt;b&gt;Resistors in Single Inline Packages&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SIL4" urn="urn:adsk.eagle:footprint:25250/1" library_version="2">
<description>&lt;b&gt;Single In Line&lt;/b&gt;</description>
<wire x1="4.572" y1="1.016" x2="-4.572" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="0.762" x2="-3.048" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="0.762" x2="-3.048" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-0.762" x2="-4.572" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="-0.762" x2="-4.572" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="0.889" x2="-2.921" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-0.889" x2="-4.699" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-4.572" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.572" y1="1.016" x2="5.08" y2="0.508" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.572" y1="-1.016" x2="5.08" y2="-0.508" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-0.508" x2="-4.572" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="5.08" y1="-0.508" x2="5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-1.016" x2="-4.572" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="0.889" x2="-4.699" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="0.889" x2="-4.699" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0" x2="1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.381" x2="1.143" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0.381" x2="1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0" x2="1.143" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.381" x2="-1.143" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.381" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0" x2="-1.143" y2="0.381" width="0.1524" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-5.08" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0.635" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.096" y="-0.508" size="0.9906" layer="21" ratio="12">1</text>
</package>
</packages>
<packages3d>
<package3d name="SIL4" urn="urn:adsk.eagle:package:25284/1" type="box" library_version="2">
<description>Single In Line</description>
<packageinstances>
<packageinstance name="SIL4"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="RNV" urn="urn:adsk.eagle:symbol:25249/1" library_version="2">
<wire x1="-2.54" y1="-0.762" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.762" x2="-2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.762" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<text x="2.54" y="-2.794" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="-2.794" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="E2R" urn="urn:adsk.eagle:component:25321/2" prefix="RN" uservalue="yes" library_version="2">
<description>&lt;b&gt;SIL RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="RNV" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="B" symbol="RNV" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="SIL4">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="B" pin="1" pad="3"/>
<connect gate="B" pin="2" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25284/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26997/1" library_version="2">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:27060/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="Q1" library="IRLZ44N" deviceset="IRLZ44N" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="RN1" library="resistor-sil" library_urn="urn:adsk.eagle:library:347" deviceset="E2R" device="" package3d_urn="urn:adsk.eagle:package:25284/1" value="19k"/>
<part name="RN2" library="resistor-sil" library_urn="urn:adsk.eagle:library:347" deviceset="E2R" device="" package3d_urn="urn:adsk.eagle:package:25284/1" value="180"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="33.02" y="55.88" size="1.778" layer="96">5V</text>
<text x="43.18" y="48.26" size="1.778" layer="97">VENT - 2P</text>
<text x="0" y="35.56" size="1.778" layer="97">PIN A1</text>
</plain>
<instances>
<instance part="Q1" gate="G$1" x="38.1" y="35.56" smashed="yes">
<attribute name="VALUE" x="44.45" y="35.56" size="1.778" layer="96"/>
<attribute name="NAME" x="44.45" y="38.1" size="1.778" layer="95"/>
</instance>
<instance part="P+1" gate="VCC" x="40.64" y="60.96" smashed="yes">
<attribute name="VALUE" x="38.1" y="60.96" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND1" gate="1" x="40.64" y="12.7" smashed="yes">
<attribute name="VALUE" x="38.1" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="RN1" gate="B" x="30.48" y="25.4" smashed="yes" rot="R90">
<attribute name="VALUE" x="33.274" y="22.86" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="RN2" gate="B" x="20.32" y="33.02" smashed="yes" rot="R180">
<attribute name="VALUE" x="22.86" y="35.814" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY1" gate="G$1" x="40.64" y="45.72" smashed="yes"/>
<instance part="SUPPLY2" gate="G$1" x="40.64" y="53.34" smashed="yes" rot="R180"/>
<instance part="SUPPLY3" gate="G$1" x="10.16" y="33.02" smashed="yes" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="40.64" y1="30.48" x2="40.64" y2="17.78" width="0.1524" layer="91"/>
<pinref part="RN1" gate="B" pin="1"/>
<wire x1="40.64" y1="17.78" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
<wire x1="30.48" y1="20.32" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="30.48" y1="17.78" x2="40.64" y2="17.78" width="0.1524" layer="91"/>
<junction x="40.64" y="17.78"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="RN1" gate="B" pin="2"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="30.48" y1="33.02" x2="35.56" y2="33.02" width="0.1524" layer="91"/>
<wire x1="27.94" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
<junction x="30.48" y="33.02"/>
<pinref part="RN2" gate="B" pin="1"/>
<wire x1="25.4" y1="33.02" x2="30.48" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<wire x1="40.64" y1="58.42" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="40.64" y1="43.18" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="G$1" pin="VCC"/>
<pinref part="RN2" gate="B" pin="2"/>
<wire x1="12.7" y1="33.02" x2="15.24" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
