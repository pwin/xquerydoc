# library module: http://github.com/xquery/xquerydoc
    This library module controls the parsing of XQuery xqdoc comments     


Author:  Jim Fuller, John Snelson    Sept 18, 2011   
Version:  0.1 

## Table of Contents

* Functions: [ _trimStringLiteral\#1](#func_ _trimStringLiteral_1), [ _localname\#1](#func_ _localname_1), [ _type\#1](#func_ _type_1), [ _commentContents\#1](#func_ _commentContents_1), [ _comment\#1](#func_ _comment_1), [ parse\#1](#func_ parse_1), [ parse\#2](#func_ parse_2), [ generate-docs\#2](#func_ generate-docs_2)


## Functions

### <a name="func_ _trimStringLiteral_1"/>  _trimStringLiteral\#1
```xquery
 _trimStringLiteral($literal as xs:string
) as  xs:string
```
    private function trimming string literals 


#### Params

* literal as  xs:string


#### Returns
*  xs:string

### <a name="func_ _localname_1"/>  _localname\#1
```xquery
 _localname($qname as xs:string
) as  xs:string
```

#### Params

* qname as  xs:string


#### Returns
*  xs:string

### <a name="func_ _type_1"/>  _type\#1
```xquery
 _type($t as element(SequenceType)?
)
```

#### Params

* t as  element(SequenceType)?


### <a name="func_ _commentContents_1"/>  _commentContents\#1
```xquery
 _commentContents($e
)
```

#### Params

* e as 


### <a name="func_ _comment_1"/>  _comment\#1
```xquery
 _comment($e as element()+
)
```

#### Params

* e as  element()+


### <a name="func_ parse_1"/>  parse\#1
```xquery
 parse($module as xs:string
) as  element(doc:xqdoc)
```
   main entrypoint into xquerydoc   

 element(doc:xqdoc) 
#### Params

* module as  xs:string


#### Returns
*  element(doc:xqdoc)

### <a name="func_ parse_2"/>  parse\#2
```xquery
 parse($module as xs:string, $mode as xs:string
) as  element(doc:xqdoc)
```
    main entrypoint into xquerydoc   

 element(doc:xqdoc) 
#### Params

* module as  xs:string

* mode as  xs:string


#### Returns
*  element(doc:xqdoc)

### <a name="func_ generate-docs_2"/>  generate-docs\#2
```xquery
 generate-docs($type,$xqdoc
)
```
    example function for generating html from within XQuery, will need to employ processor specific method of invoking XSLT    

 element(html:html) 
#### Params

* type as  determining xquery main or library module

* xqdoc as 






*Generated by [xquerydoc](https://github.com/xquery/xquerydoc)*
