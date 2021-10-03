# XML

1.DTD定义合法的XML文档构建模块,使用一系列合法的元素来定义文档的结构。DTD是对XML格式的描述
2.DTD:所有XML文档均由以下简单的构建模块构成

> 1.元素
> 2.实体
> 3.属性
> 4.PCDATA(parsed character data)被解析的字符数据不应当包含任何&、<或者>字符；需要使用&amp;&lt;以及&gt;实体来分别替换。
> 5.CDATA(character data),不会被解析的文本

3.语法,声明"非.../既"类型的内容<!ELEMENT note(to,from,header,(message|body))>
4.声明混合型内容:<!ELEMENT note(#PCDATAo,from,header,(message|body))>
5.DTD属性语法<!ATTLIST 元素名称 属性名称 属性类型 #IMPLIED>
6.DTD实体是用于定义普通文本或特殊字符的快捷方式的变量,语法:<!ENTITY 实体名称 "实体的值">,<!ENTITY 实体名称 SYSTEM "URI/URL">
7.DTD:DOCTYPE声明:<!DOCTYPE 根元素[元素声明]>
8.DTD只有IE EXPLOER可以使用进行验证,其他浏览器使用不到。
