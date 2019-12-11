<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <sch:rule context="//tei:body//tei:persName//@ref">
        <sch:let name="personIds" value="//tei:body/tei:listPerson/tei:person/@xml:id"/>
        <sch:let name="personGrpIds" value="//tei:body/tei:listPerson/tei:personGrp/@xml;id"/>    
        <sch:let name="personPtrs" value="for $i in $personIds return concat('#', $i)"/> 
        <sch:let    name="personGrpPtrs" value="for $i in $personIds return concat('#', $i)"/>
        <sch:assert test=". = $personPtrs or . = $personGrpPrts">
            Acceptable values: <sch:value-of select="$personPtrs and $personGrpPtrs"/>
        </sch:assert>
    </sch:rule>
    
    
</sch:schema>
