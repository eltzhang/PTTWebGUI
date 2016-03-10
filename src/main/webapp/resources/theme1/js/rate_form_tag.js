function calculateBillRateJPT(b,m,c,k,e,l){var j=document.getElementById("maxRates"+m);if(j==null){var d=document.getElementById("billRateDisplay"+m);if(d!=null){j=d.innerText}}var a,n;var h=getNumCount();var g=$("form[name='jobPostingForm']").serialize();g=g+"&action=roundOff_values";g=g+"&minPayRate="+a;g=g+"&parent_sequence="+m;g=g+"&maxPayRate="+n;g=g+"&rate_sequence="+h;g=g+"&maxRatesObjValue="+j.value;$.post("/buyer/job_posting_form.do",g,function(o){roundedOffValue(o)});var i=document.getElementById("billRateDisplay"+m);var f;if(j.value==undefined){f=getNumberFromLocaleNumber(j)}else{f=getNumberFromLocaleNumber(j.value)}i.innerText=getLocaleNumberFromNumber(f,2);i.style.fontWeight="bold";i.style.textAlign="right";showcommitedSpend(b,m,e);mspObj=document.getElementById("mspPer"+m);if(mspObj!=null){getSupplierRates(m)}}function showcommitedSpend(c,n,h){validateUnitOfMeasure(c,n,h);var q=c.srcElement;var g=getNumCount();var e=0;var o=0;var b=null;for(var j=0;j<g;j++){var f=document.getElementById("chkcommittedSpends"+j);if(f&&f.checked){o++;var a=getNumberFromLocaleNumber(document.getElementById("billRateDisplay"+j).innerText);b=document.getElementById("uom_"+j);if(a!=""){a=parseFloat(a);e=e+a}}}e=e/o;e=(Math.round(e*100))/100;if(isNaN(e)||e<=0){e=0}e=getLocaleNumberFromNumber(e,2);var m=e;var d=$("#maximumCurrency").html();var l=d.substring(d.indexOf("(")+1,d.indexOf(")"));if(q!=null&&!q.checked&&b!=null){m=m+" "+l+"/"+b.value}else{m=m+" "+l+"/"+h}var k=document.getElementById("averageCommitedSpendDisplay");if(k!=null){k.innerText=m;k.style.fontWeight="bold";k.style.textAlign="right"}var p=document.getElementById("averageRateCal");if(p!=null){p.innerText=m;calculateTotalForm()}}function validateUnitOfMeasure(b,j,c){var d=b.srcElement;var f=getNumCount();if(f!=1&&d!=null&&d.type!="checkbox"){return}for(var e=0;e<f;e++){var h=document.getElementById("chkcommittedSpends"+e);var g=document.getElementById("chkcommittedSpends"+j);var a=document.getElementById("uom_"+e);if(h!=null&&a!=null&&h.checked&&a.value!=c&&g.checked){alert(getLikeTypeUom());d.checked=false;return false}}}function setUOMType(){var a=getNumCount();for(var b=0;b<a;b++){var d=document.getElementById("chkcommittedSpends"+b);var c=document.getElementById("uom_"+b);if(d!=null&&c!=null&&d.checked){if(c.value=="Hr"){document.getElementById("rateTypeHidden").value="Hr"}else{document.getElementById("rateTypeHidden").value="Day"}return false}}}function getChildSequences(f,g,a){var b=document.getElementsByName(g);var d=document.getElementsByName("rateUom");var e=document.getElementsByName("nodes");var h=new Array();for(var c=0;c<b.length;c++){if(b[c].value==f&&(d[c].value==a)){h.push(e[c].value)}}return h}function calculateFactorialRateJPT(f,h,e,a,c){if(a==3){stringIdFieldName="rateCategoryIds"}else{stringIdFieldName="baseRateCategoryIds"}var g=getChildSequences(h,stringIdFieldName,c);for(var d=0;d<g.length;d++){var b;if(a==3){b=doFactorialRateCalculation(f,g[d],e);if(!b){calculatePayRateBased2(f,g[d],e,h,a,c)}}else{b=doFactorialRateCalculation(f,e,g[d]);if(!b){calculatePayRateBased2(f,e,g[d],h,a,c)}}}showcommitedSpend(f,e,c)}function doFactorialRateCalculation(b,k,c){if(c<0){return true}var p=document.getElementById("minRates"+c);var m=document.getElementById("maxRates"+c);var l=document.getElementById("factorialMinRate"+c);var d=document.getElementById("factorialMaxRate"+c);var g=document.getElementById("billRateDisplay"+c);var o,i,f;o=0;var e=document.getElementById("minRates"+k);if(e!=null){roundOffValues(e,2);o=getNumberFromLocaleNumber(e.value);highlightErrorField(e)}else{if(e==null){return false}}var n=document.getElementById("rateFactors"+c);if(n!=null){roundOffValues(n,3);i=getNumberFromLocaleNumber(n.value);highlightErrorField(n)}else{i=0}f=0;var h=document.getElementById("maxRates"+k);if(h!=null){f=getNumberFromLocaleNumber(h.value)}else{if(h==null){return false}}var q=i*o;var j=i*f;var a=j;q=getLocaleNumberFromNumber(q,2);j=getLocaleNumberFromNumber(j,2);if(l!=null){l.innerText=q}if(d!=null){d.innerText=j}if(p!=null){p.value=q}if(m!=null){m.value=j}if(g!=null){g.innerText=getLocaleNumberFromNumber(a,2)}if(h!=null||e!=null){return true}}function calculatePayRateBased2(b,i,d,h,c,e){if(d<0){return}var l=document.getElementById("minPayRates"+i);var f=document.getElementById("maxPayRates"+i);var a,k;a=0;if(l!=null){a=getNumberFromLocaleNumber(l.value)}k=0;if(f!=null){k=getNumberFromLocaleNumber(f.value)}var j=document.getElementById("rateFactors"+d);if(j!=null){rateFactor=getNumberFromLocaleNumber(j.value);highlightErrorField(j)}else{rateFactor=0}a=a*rateFactor;k=k*rateFactor;var g=$("form[name='jobPostingForm']").serialize();g=g+"&action=recalculate_payrate";g=g+"&rate_sequence="+d;g=g+"&parent_sequence="+i;g=g+"&minPayRate="+a;g=g+"&maxPayRate="+k;g=g+"&rateCategoryId="+h;g=g+"&rateUnit="+e;g=g+"&rateType="+c;$.post("/buyer/job_posting_form.do",g,function(m){updatePayRateBasedSection(m)})}function calculatePayRateBasedJPT(c,a,d,b){if(a==5||a==18){doPayRateBasedCalculation(c,a,d,b)}}function doPayRateBasedCalculation(f,b,g,c){if(f<0){return}var i=document.getElementById("minPayRates"+f);var d=document.getElementById("maxPayRates"+f);var a,h;a=0;if(i!=null){a=getNumberFromLocaleNumber(i.value)}h=0;if(d!=null){h=getNumberFromLocaleNumber(d.value)}var e=$("form[name='jobPostingForm']").serialize();e=e+"&action=recalculate_payrate";e=e+"&rate_sequence="+f;e=e+"&parent_sequence="+f;e=e+"&minPayRate="+a;e=e+"&maxPayRate="+h;e=e+"&rateCategoryId="+g;e=e+"&rateUnit="+c;e=e+"&rateType="+b;$.post("/buyer/job_posting_form.do",e,function(j){updatePayRateBasedSection(j)})}function updatePayRateBasedSection(json){json=trim(json);var data=eval("("+json+")");var sequence=data.sequence;var parentSequence=data.parentSequence;var targetMinBillRate=data.minBillRate;var targetMaxBillRate=data.maxBillRate;var rateCategoryId=data.rateCategoryId;var rateUnit=data.rateUnit;var rateType=data.rateType;var targetMaxPayRatesobj=data.maxPayRate;var targetFactorRateobj=data.rateFactor;targetMinBillRate=getLocaleNumberFromNumber(targetMinBillRate,2);targetMaxBillRate=getLocaleNumberFromNumber(targetMaxBillRate,2);targetMaxPayRatesobj=getLocaleNumberFromNumber(targetMaxPayRatesobj,2);targetFactorRateobj=getLocaleNumberFromNumber(targetFactorRateobj,3);var targetMaxPayRatesDisplayobj=document.getElementById("maxPayRates"+sequence);var targetFactorRateDisplayobj=document.getElementById("rateFactors"+sequence);if(targetMaxPayRatesDisplayobj==null){targetMaxPayRatesDisplayobj=document.getElementById("maxPayRates"+sequence)}if(targetMaxPayRatesDisplayobj!=null){targetMaxPayRatesDisplayobj.value=targetMaxPayRatesobj}if(targetFactorRateDisplayobj==null){targetFactorRateDisplayobj=document.getElementById("rateFactors"+sequence)}if(targetFactorRateDisplayobj!=null){targetFactorRateDisplayobj.value=targetFactorRateobj}var targetMinBillRateDisplayobj=document.getElementById("minbillRateDisplay"+sequence);if(targetMinBillRateDisplayobj==null){targetMinBillRateDisplayobj=document.getElementById("factorialMinRate"+sequence)}if(targetMinBillRateDisplayobj!=null){targetMinBillRateDisplayobj.innerText=targetMinBillRate}var targetMaxBillRateDisplayobj=document.getElementById("maxbillRateDisplay"+sequence);if(targetMaxBillRateDisplayobj==null){targetMaxBillRateDisplayobj=document.getElementById("factorialMaxRate"+sequence)}if(targetMaxBillRateDisplayobj!=null){targetMaxBillRateDisplayobj.innerText=targetMaxBillRate}var targetBillRateDisplayobj=document.getElementById("billRateDisplay"+sequence);if(targetBillRateDisplayobj!=null){targetBillRateDisplayobj.innerText=targetMaxBillRate}if(sequence==parentSequence){calculateFactorialRateJPT(event,rateCategoryId,sequence,rateType,rateUnit)}calculateBillRateJPT(event,sequence,rateType,rateCategoryId,rateUnit)}function roundedOffValue(json){json=trim(json);var data=eval("("+json+")");var sequence=data.sequence;var targetMaxRateobj=data.maxRate;var objseq=data.parentSequence;var parentSequence=data.parentSequence;targetMaxRateobj=getLocaleNumberFromNumber(targetMaxRateobj,2);var targetMaxRatesDisplayobj=document.getElementById("maxRates"+objseq);if(targetMaxRatesDisplayobj==null){targetMaxRatesDisplayobj.value=targetMaxRateobj}if(targetMaxRatesDisplayobj!=null){targetMaxRatesDisplayobj.value=targetMaxRateobj}}function highlightErrorField(b){if(b!=null){var a=getNumberFromLocaleNumber(b.value);if(!isEmpty(b)&&typeof a!="number"){b.className="errInputCls";b.parentElement.title=getMustEnterNumericValueMessage()}else{b.className="";b.parentElement.title=""}}};