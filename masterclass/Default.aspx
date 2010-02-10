<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Master Classes | CentralDoctor.co.uk</title>
    <link href="stylez.css" rel="stylesheet" type="text/css" />
    <link href="colorbox.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.3.js" type="text/javascript"></script>
    <script src="js/emailPage.js" type="text/javascript"></script>
    <script src="js/jquery.colorbox-min.js" type="text/javascript"></script>
    
      <script type="text/javascript">
          $('document').ready(function() {
              $('.pages').attr('class', 'pages ovHid');
              $('#agendaTab').attr('class', 'pages ovVis');
              $('#formHolder').attr('class', 'ovHid');
              //tabs
              $('.buttons').click(function() {
                  var id = $(this).attr('id');
                  var colour = findColour(id);
                  $('.pages').attr('class', 'pages ovHid');
                  $('#' + id + 'Tab').attr('class', 'pages ovVis');
                  $('#contHolder').css('border-color', colour);
              });

              //open form on name enter
              $('#yourName').keyup(function() {
                  var filter = $('#yourName').val();

                  if (filter.length >= 2) {
                      $('#formHolder').animate({ 'height': '285px' }, 1000).attr('class', 'formHolder');
                  }
              });


              function findColour(id) {
                  var color;
                  if (id == 'agenda') {
                      color = '#004964'
                  } else if (id == 'topics') {
                      color = '#005a84'
                  } else if (id == 'speakers') {
                      color = '#007db1'
                  } else if (id == 'educational') {
                      color = '#00aec5'
                  } else if (id == 'calender') {
                      color = '#1fbeca'
                  } else if (id == 'endoscopy') {
                      color = '#7bccc8'
                  }
                  return color
              }

              $(".moreLink").colorbox();
          });
      </script>
    </head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" ></asp:ScriptManager>
    
    <div id="container">
    <div class="innerCont">
    <div class="hospitalsTop"><img src="img/hsc.gif" alt="Harley Street Clinic" /></div> <div class="hospitalsTop"><img src="img/port.gif" alt="The Portland Hospital" /></div> <div class="hospitalsTop"><img src="img/pg.gif" alt="The Princess Grace Hospital" /></div> <div class="hospitalsTop"><img src="img/uch.gif" alt="Harley Street @ UCH" /></div>
    
    <div id="mainLogos">
    <img id="hcaLogo" src="img/hca.gif" width="137px" height="78px" alt="HCA International" />  <img id="RSMLogo" src="img/rsm.gif" width="202px" height="85px" alt="The Royal Society of medicine" />
    </div>
    
    <h1>Saturday 27th February 2010, The Royal Society of Medicine<br />
<span class="bold">The Roles of Endoscopy in the Diagnosis and Treatment of Gastrointestinal Cancer</span></h1>
  
  
  <div id="formHolder2" class="noPad">
    <div class="leftColFrm inlineBlock noPad">
<p id="toRegister">Enter your name to register</p>
    </div>

    <div class="rightColFrm inlineBlock noPad">
   <input id="yourName" class="field1" type="text" value="First name" />
    </div>
   </div>  
      

   <div id="formHolder">
    <div class="leftColFrm inlineBlock">
    <input id="surname" class="field1" type="text" value="Surname" />
    <input id="tel" class="field1" type="text" value="Telephone" />
    <input id="email" class="field1" type="text" value="Email" />
    <input id="GMC" class="field1" type="text" value="Dietary requirements" />
    <label class="datesLabel" id="attendOnlineLabel">I am unable to attend but wish to view online <input id="attentOnline" type="checkbox" /></label>
    </div>
    
    <div class="rightColFrm inlineBlock">
    <input id="practice" class="field1" type="text" value="Practice name" />
    <input id="add1" class="field1" type="text" value="Address 1" />
    <input id="add2" class="field1" type="text" value="Address 2" />
    <input id="city" class="field1" type="text" value="City" />
    <input id="postcode" class="field1" type="text" value="Post code" />
     <p class="datesLabel">I am interested in the following Masterclasses</p>
     <label class="datesLabel" id="Label1">27th Mar <input id="2703" type="checkbox" /></label>
     <label class="datesLabel" id="Label2">8th May <input id="0805" type="checkbox" /></label>
     <label class="datesLabel" id="Label3">19th Jun <input id="1907" type="checkbox" /></label>
     <label class="datesLabel" id="Label4">18th Sep <input id="1809" type="checkbox" /></label>   
     <input type="image" id="register" onclick="return false;" src="img/send_btn.gif" />
    </div>
   </div>
   <p class="confirmation"></p> 
     
    <ul>
    <li><a href="#" class="buttons" id="agenda"><img src="img/agenda.gif" alt="agenda" /></a></li>
    <li><a href="#" class="buttons" id="topics"><img src="img/topics.gif" alt="topics" /></a></li>
    <li><a href="#" class="buttons" id="speakers"><img src="img/speakers.gif" alt="speakers" /></a></li>
    <li><a href="#" class="buttons" id="educational"><img src="img/education.gif" alt="educational objectives" /></a></li>
    <li><a href="#" class="buttons" id="calender"><img src="img/calender.gif" alt="masterclass calender" /></a></li>
    <li><a href="#" class="buttons" id="endoscopy"><img src="img/endo.gif" alt="hca endoscopy services" /></a></li>
    </ul>
    
    <div id="contHolder">
    
    <div id="agendaTab" class="pages">
    <div class="leftCol inlineBlock">
    <h2>Agenda</h2>
   
   <h3 class="none"><span class="red">0900 - 0930</span><br /><span class="norm">Registration and Refreshments</span></h3>
   
      <h3 class="agendah3"><span class="red">0930 - 0945</span><br /><span class="norm">Welcome</span></h3>
    <p>Sue Smith, Chief Executive Officer, The Princess Grace Hospital<br />
Dr Sean Preston, Meeting Chairman</p>
    
      <h3 class="agendah3"><span class="red">0945 - 1020</span><br /><span class="norm">‘Gastrointestinal Cancer; Prevention Better Than Cure’</span></h3>
    <p>Dr Sean Preston followed by Q&amp;A</p>
    
      <h3 class="agendah3"><span class="red">1020 - 1055</span><br /><span class="norm">‘Moving Away From Surgery For Early Gastrointestinal Cancers; A Paradigm Shift’</span></h3>
    <p>Dr Matthew Banks followed by Q&amp;A</p>
    
      <h3 class="agendah3"><span class="red">1055 - 1110</span><br /><span class="norm">Tea and Coffee</span></h3>
    
 </div>
    <div class="rightCol inlineBlock">
  
     <h3 class="none"><span class="red">1110 - 1145</span><br /><span class="norm">‘Endoscopy In Inflammatory Bowel Disease’</span></h3>
     <p>Dr Charles Murray followed by Q&amp;A</p>
   
      <h3 class="agendah3"><span class="red">1145 - 1220</span><br /><span class="norm">‘Capsule Endoscopy; To Boldly Go…’</span></h3>
    <p>Dr Simon Anderson followed by Q&amp;A</p>
    
      <h3 class="agendah3"><span class="red">1220 - 1255</span><br /><span class="norm">‘Recent Advances In Paediatric Endoscopy’</span></h3>
    <p>Dr Mike Thomson followed by Q&amp;A</p>
    
      <h3 class="agendah3"><span class="red">1255 - 1300</span><br /><span class="norm">Closing Remarks</span></h3>
    <p>Dr Sean Preston, Meeting Chairman</p>
    
      <h3 class="agendah3"><span class="red">1300 - 1400</span><br /><span class="norm">Hot Buffet lunch and Networking</span></h3>
  
    </div>
    </div>
    
       <div id="topicsTab" class="pages">
    <div class="leftCol inlineBlock">
    <h2>Topics</h2>
      <p class="topicsp">The Masterclass will provide a comprehensive update on the significant advances in endoscopic technology and in the resulting increased procedural capabilities.</p>

  <p class="topicsp">Our speakers will cover the following topics; screening and endoscopic treatment of Barrett's oesophagus, oesophageal and colorectal cancer, inflammatory bowel disease (IBD) and videocapsule endoscopy (VCE)</p>
    
    <h3 class="topicsh3">‘Gastrointestinal Cancer: Prevention Better than Cure’<br /><span class="norm">Dr Sean Preston BSc (Hons) PhD MBBS MRCP</span></h3>
    <p class="topicsp">This session covers the natural history of tumourigenesis in the oesophagus
and colon from both a molecular and endoscopic perspective; how an
individual can minimise their risk of developing gastrointestinal cancer;
the most appropriate methods for population screening of oesophageal
and colon cancer and the different endoscopic methods used to treat 
early precancerous gastrointestinal lesions.</p>
     
      <h3 class="topicsh3">‘Endoscopy in Inflammatory Bowel Disease’<br /><span class="norm">Dr Charles Murray MA PhD MRCP</span></h3>
    <p class="topicsp">Endoscopy plays an important role in the diagnosis, staging and follow up of
inflammatory bowel disease (IBD). In this presentation we will discuss diagnostic
features, distribution of disease and novel endoscopic techniques for surveillance 
of IBD and the complications associated with it.</p>  

       </div>
    
    <div class="rightCol inlineBlock">
  <h3 class="topicsh3">‘Moving Away From Surgery For Early Gastrointestinal Cancers; A Paradigm’<br /><span class="norm">Dr Matthew Banks BSc MB MRCP PhD</span></h3>
    <p class="topicsp">This topic will cover the emerging technologies enabling the detection,
demarkation and classification of early neoplasia in the GI tract, focussing
on Barretts dysplasia, gastric cancer and colorectal polyps. Once detected,
the different methods available for resection of the lesions will be discussed
including endoscopic mucosal resection (EMR), endoscopic submucosal
dissection (ESD) and ablative techniques such as photodynamix therapy 
and radiofrequency ablation.</p>


  <h3 class="topicsh3">‘Capsule Endoscopy; To Boldly  Go...’<br /><span class="norm">Dr Simon Anderson MRCP MD</span></h3>
    <p class="topicsp">Capsule endoscopy is an exciting new procedure which, for the first time, enables 
the entire gastrointestinal tract to be visualised. It has now become the most useful 
modality for imaging the small intestine. The talk will outline the procedure itself, 
explain who should be referred and discuss the accuracy and risks. New 
developments and future advancements will also be presented.
</p>
  
  <h3 class="topicsh3">‘Recent Advances in Paediatric Endoscopy’<br /><span class="norm">Dr Mike Thomson MB ChB DCH FRCPCH FRCP MD</span></h3>
    <p class="none">Dr Mike Thomson is widely published on many aspects of Paediatric gut related
and liver related problems, as well as running the only Paediatric Live Endoscopy
Course in the world at the Royal Free Hospital.</p>
  
  </div>
    </div>
    
       <div id="speakersTab" class="pages">
    <div class="leftCol inlineBlock">
    <h2>Speakers</h2>
    
    <!-- speaker1-->
    <div class="speakerBox">
    <img src="img/preston.jpg" alt="Dr Sean Preston" /><h3>Dr Sean Preston</h3>
    <p class="qual">BSc (Hons) PhD MBBS MRCP</p>
    <p class="nhs">Barts and The London NHS Trust</p>
    <p>Meeting ChairmanDr. Preston is a Consultant Gastroenterologist and General 
Physician, Barts and the London NHS Trust. <a class="moreLink" href="preston.htm">more</a></p> 
</div>

       <div class="speakerBox"><!-- speaker2-->
     <img src="img/banks.jpg" alt="Dr Matthew Banks" /><h3>Dr Matthew Banks</h3>
    <p class="qual">BSc MB MRCP PhD</p>
    <p class="nhs">University College London Hospitals NHS Trust</p>
    <p>Dr Banks is a Consultant Gastroenterologist and honorary senior lecturer at
University College London Hospitals NHS Trust, where he is also Director. <a class="moreLink" href="Banks.htm">more</a></p>
    </div>
     
       <div class="speakerBox speakerBox10"><!-- speaker3-->
<img src="img/murray.jpg" alt="Dr Charles Murray" /><h3>Dr Charles Murray</h3>
    <p class="qual">MA PhD MRCP</p>
    <p class="nhs">Royal Free NHS Trust</p>
    <p>Dr Murray is a Consultant Physician and Gastroenterologist at the Royal Free NHS
Trust where he is also Clinical Lead for Gastrointestinal Endoscopy. <a class="moreLink" href="Murray.htm">more</a></p>
</div>

    </div>
    
    <div class="rightCol inlineBlock">  
     
       <div class="speakerBox"><!-- speaker4-->
     <img src="img/anderson.jpg" alt="Dr Simon Anderson" /><h3>Dr Simon Anderson</h3>
    <p class="qual">MRCP MD</p>
    <p class="nhs">Guy’s & St Thomas’ NHS Foundation Trust</p>
    <p>Dr Anderson is a Consultant Physician and Gastroenterologist at Guy’s and 
St Thomas’ NHS Foundation Trust. He also leads an acute general medicine. <a class="moreLink" href="Anderson.htm">more</a></p>
     </div>
     
       <div class="speakerBox speakerBoxlast"><!-- speaker5-->
     <img src="img/thomson.jpg" alt="Dr Mike Thomson" /><h3>Dr Mike Thomson</h3>
    <p class="qual">MB ChB DCH FRCPCH FRCP MD</p>
    <p class="nhs">Centre for Paediatric Gastroenterology - Sheffield Children’s Hospital</p>
    <p>Dr Thomson was trained firstly in Paediatrics then in the sub-speciality of Paediatric 
Gastroenterology and has also focused widely on Paediatric Hepatology. <a class="moreLink" href="Thomson.htm">more</a></p>
</div>

    </div>
    
    </div>
    
       <div id="educationalTab" class="pages">
  <div class="leftCol inlineBlock">
    <h2>Educational objectives</h2>
    
    <h3 class="eduFirst">To Understand:</h3>
    <p class="endoList">1) The natural history of tumourigenesis in the oesophagus and colon from both a
   molecular and endoscopic perspective;</p>
    <p class="endoList">2) How an individual can minimise their risk of developing gastrointestinal cancer;</p>
    <p class="endoList">3) The most appropriate methods for population screening of oesophageal and colon 
   cancer;</p>
    <p class="endoList eduLast">4) The different endoscopic methods used to treat early precancerous gastrointestinal
   lesions.</p> 
  </div>
    <div class="rightCol inlineBlock">
 <h3 class="endoList">OVERALL THEME:<br /><span class="norm">Screening and Endoscopic treatment of Barrett’s Oesophagus, Oesophageal and Colorectal Cancer, Endoscopic Submucosal Dissection (ESD) Endoscopic Mucosal Resection (EMR), Inflammatory Bowel Disease (IBD) Video Capsule Endoscopy (VCE)</span></h3>
    <p class="endoList">The Masterclass aims to highlight the many roles of endoscopy in the diagnosis and treatment of gastrointesinal disease. Over the last decade significant technological advancements have been made in the design of both endoscopes and endoscopic equipment, ever increasing the procedural capabilities. Confocal endoscopy, narrow band imaging, auto fluorescence, high definition, zoom endoscopy, endoscopic ultrasound, wireless capsule endoscopy; the list is almost endless, but how can these advancements be used to help your patients?</p> 
    <p class="endoList">Populations of 'healthy' individuals can be endoscopically screened for precancerous and cancerous gastrointestinal lesions and both may now be treated at the time of gastroscopy and colonoscopy using surgical techniques. The earlier these lesions are detected, the better the patient's outcome. Chronic inflammatory conditions within the gastrointestinal tract are often associated with an increased risk of cancer; endoscopy is central in their surveillance and increasingly used in their treatment, but how frequently should these examinations be performed and with what form of endoscopy? When our time comes we would all like undergo full endoscopic examination with swallow a tablet size camera, but how far away from this are we?  What therapeutic interventions are possible? Endoscopy is an extremely powerful tool and we hope to outline how it can be most appropriately employed in different patient groups.</p>
 
    </div>
    </div>
    
       <div id="calenderTab" class="pages">
    <div class="leftCol inlineBlock">
    <h2>Masterclass Calender</h2>
    <h3 class="topicsh3">Gastrointestinal Masterclass Series 2010</h3>
    <p class="topicsh3">Saturday 27th February</p>
    <p class="topicsh3">Saturday 27th March</p>
    <p class="topicsh3">Saturday 8th May</p>
    </div>
    <div class="rightCol inlineBlock">
    <p class="topicsh3 calenderCol2">Saturday 19th June</p>
    <p class="topicsh3">Saturday 18th September</p>
    <p class="topicsh3">Saturday 13th November</p>
    </div>
    </div>
    
       <div id="endoscopyTab" class="pages">
    <div class="leftCol inlineBlock">
    <h2>HCA endoscopy services</h2>
    <p class="topicsp">HCA hospitals offer a full range of endoscopic services designed to combine a caring environment with modern high-technology facilities for outpatients and inpatients. </p>
    <p class="topicsp">A full range of diagnostic and therapeutic procedures are performed in the hospitals, State-of-the-art equipment, specialist endoscopy nurses and on site decontamination facilities contribute towards first rate HCA facilities.</p>
    <p class="speakerBoxlast">For further information on HCA and its hospitals, please visit our <a href="http://www.hcahospitals.co.uk" >web site</a>.
    <br /><br />
For more information on Endoscopy, register today for the HCA Endoscopy Masterclass, in association with the Royal Society of Medicine.</p>
    </div>
    <div class="rightCol inlineBlock">
    <h3 class="endoList">Endoscopic services offered across the HCA hospitals</h3>
    <p class="endoList">Diagnostic and therapeutic gastroscopy</p>
    <p class="endoList">Diagnostic and therapeutic colonoscopy</p>
    <p class="endoList">Flexible sigmoidoscopy</p>
    <p class="endoList">Diagnostic endoscopic ultrasound (EUS)</p>
    <p class="endoList">Endoscopic Retrograde Cholangiopancreatography (ERCP)</p>
    <p class="endoList">Paediatric Endoscopy</p>
    <p class="endoList">Bronchoscopy</p>
    <p class="endoList">Cystoscopy</p>
 
    </div>
    </div>
    
    
   <img id="footer" src="img/masterclassfooter.gif" alt="centraldoctor.co.uk/masterclasses" />
    </div>

    
    </div>
    
    
    </div>
    </form>
    
    <script type="text/javascript">
        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
    try {
        var pageTracker = _gat._getTracker("UA-12920305-1");
        pageTracker._trackPageview();
    } catch (err) { }</script>
</body>
</html>
