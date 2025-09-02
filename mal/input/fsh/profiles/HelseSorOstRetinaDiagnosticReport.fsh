// declaration DiagnosticReport
Profile: HelseSorOstRetinaDiagnosticReport
 
// keywords
Parent: DiagnosticReport
Id: RetinaDiagnosticReport
Title: "HSØ DiagnosticReport for Retinascreening"
Description: "This profile can send results from retinascreening"
* extension contains RetinaImageQualityExtension named RetinaImageQualityExtension 0..1
* extension contains KIProductName named KIProductName 0..1
* extension contains KIVersionAlgoritme named KIVersionAlgoritme 0..1
* extension contains KIFristNesteUndersokelse named KIFristNesteUndersokelse 0..1
* extension contains KIProtokoll named KIProtokoll 0..1
* extension contains RetinaTiltaksstausForrigeUndersokelseExtension named ForrigeUndersøkelse 0..1
 
* conclusionCode from retinaConclusionCodeValueset
 
//Rules
//Profilering conclusionCode
ValueSet: RetinaConclusionCodeValueset
Id: retinaConclusionCodeValueset
Title: "Conclusion Code ValueSet for Retinascreening"
Description: "Allowed conclusion codes for DiagnosticReport"
* include codes from system RetinaConclusionCodesystem
 
CodeSystem: RetinaConclusionCodesystem
Id: retinaConclusionCodesystem
Title: "Kodeverk for konklusjon Retina"
Description: "Verdisett som beskriver verdier for forløpsstatus for neste undersøkelse for Retinascreening.."
* ^content = #complete
* #1001 "Gradering ferdig"
* #1002 "Til primærgradering"
* #1003 "Til sekundærgradering"
 
//Extensjon KI produktnavn
Extension: KIProductName
Id: kIProductNameExtension
Title: "KI Product Name ekstensjon"
* ^context[0].type = #element
* value[x] only string
* valueString 1..1
 
//Extensjon KI versjon algoritme    
Extension: KIVersionAlgoritme
Id: kIVersjonAlgoritmeExtension
Title: "KI versjon algoritme extensjon"
* ^context[0].type = #element
* value[x] only string
* valueString 1..1
 
//Extensjon Frist for neste undersøkelse        
Extension: KIFristNesteUndersokelse
Id: fristNesteUndersokelseExtension
Title: "Frist neste undersøkelse"
* ^context[0].type = #element
* value[x] only string
* valueString 1..1
 
//Extensjon KI protokoll        
Extension: KIProtokoll
Id: kIprotokollExtension
Title: "KI protokoll extensjon"
* ^context[0].type = #element
* value[x] only string
* valueString 1..1
 
//Ekstensjon Tiltaksstatus Forrige Undersøkelse
Extension: RetinaTiltaksstausForrigeUndersokelseExtension
Id: forrigeTiltaksstatusExtension
Title: "Titaksstaus forrige undersøkelse Retina"
Description: "Angir om et tiltak er primært eller sekundært."
* ^status = #active
* value[x] only CodeableConcept
* valueCodeableConcept from TiltaksstatusNesteUndersokelseValueSet (required)
 
// ValueSet definition Tiltaksstatus forrige undersøkelse
ValueSet: TiltaksstatusNesteUndersokelseValueSet
Id: tiltaksstatusNesteUndersokelse
Title: "Verdisett for tiltaksstatus neste undersøkelse"
Description: "Verdisett som beskriver verdier for forløpsstatus for neste undersøkelse for Retinascreening."
* include codes from system TiltakStatusNesteUndersokelseCodeSystem
 
// CodeSystem definition Tiltaksstatus Videre undersøkelse
CodeSystem: TiltakStatusNesteUndersokelseCodeSystem
Id: tiltaksStatusNesteUndersokelseCodeSystem
Title: "Verdisett for tiltaksstatus neste undersøkelse"
Description: "Verdisett som beskriver verdier for forløpsstatus for neste undersøkelse for Retinascreening.."
* ^content = #complete
* #3001 "A"
* #3002 "B"
 
//Ekstensjon Videreforløp
Extension: RetinaVidereForlopExtension
Id: videreForlopExtension
Title: "Videre forløpsstudie Retina"
Description: "Angir videre forløp"
* ^status = #active
* value[x] only CodeableConcept
* valueCodeableConcept from VidereForlopValueSet (required)
 
// ValueSet definition VidereForløp
ValueSet: VidereForlopValueSet
Id: videreForlopValueSet
Title: "Verdisett for videre forløpsstudie"
Description: "Verdisett som beskriver videre forløp for Retinascreening."
* include codes from system VidereForlopCodeSystem
 
// CodeSystem definition Videreforløp
CodeSystem: VidereForlopCodeSystem
Id: videreForlopCodeSystem
Title: "Verdisett for videre forløp Retinascreening"
Description: "Verdisett som beskriver verdier for videre forløp Retinascreening"
* ^content = #complete
* #4001 "A"
* #4002 "B"
 
// Extention ImageQuality
Extension: RetinaImageQualityExtension
Id: retinaImageQualityExtension
Title: "Image Quality"
Description: "A coded extension representing the quality of a diagnostic image."
* ^status = #active
* ^context.type = #element
* ^publisher = "Helse Sør-Øst"
* value[x] only CodeableConcept
* valueCodeableConcept from RetinaImageQualityValueSet (required)
 
// ValueSet ImageQuality
ValueSet: RetinaImageQualityValueSet
Id: retinaImageQualityValueSet
Title: "Image Quality ValueSet for Retinascreening"
* include codes from system RetinaImageQualityCodesystem
 
// CodeSystem definition ImageQuality
CodeSystem: RetinaImageQualityCodesystem
Id: retinaImageQualityCodesystem
Title: "Image Quality CodeSystem for Retinascreening"
* ^content = #complete
* ^status = #active
* #2001 "God"
* #2002  "Så vidt graderbar"
* #2003  "Ikke graderbar"
* #2004  "Mangler"
 
 
