xquery version "1.0-ml" encoding "UTF-8";

import module namespace test = "http://www.marklogic.com/test" at "/lib/test.xqy";
import module namespace xqdoc="http://github.com/xquery/xquerydoc" at "/xquery/ml-xquerydoc.xq";

declare variable $distpath as xs:string external;
declare variable $example as xs:string external;
declare variable $expected as xs:string external;

let $expected := xdmp:document-get(fn:concat($distpath,$expected))
let $actual  := xqdoc:parse(xdmp:quote(xdmp:document-get(fn:concat($distpath,$example)))) 
  return
    <tests name="simple" example="{$example}">
    <test name="default.xqy test">
      <expected>{$expected}</expected>
      <actual>{$actual}</actual>
    </test>
    </tests>