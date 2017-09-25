**Import from XML**
Steps:
+ We will create a new SSIS project “XML_XSD”. After creating the project we will add a new Data Flow Task. 
+ Under the newly created Data Flow Task add XML Source from Other Source from SSIS Toolbox.
+ Double click XML Source and it will open the XML Source Editor.
![alt text](https://github.com/shishirmax/xml_xsd_poc/blob/master/poc_image/xml_source_editor.jpg)
+ Under XMLLocation: Browse the XML file.
+ Under XSD Location either we can add our own XSD file or we can Generate the XSD file for validating the selected xml file.
+ This xsd file can be saved at local file location also.

+ We can now add the OLE DB Destination from Other destination from SSIS Toolbox.
+ Double click the OLE DB Destination and it will open the OLE DB Destination Editor.
+ Here we can create a new connection to the DB for importing the xml data to table.
+ Under mapping we can set the mapping of column from xml file to table column.

+ Map the success path from XML Source to OLE DB Destination 
+ Execute the package.

XML Task
Steps:
+ On same SSIS project create new SSIS package.
+ In SSIS ToolBox, under common we can find XML Task, Select XML Task from the list.
+ Double click XML Task and it will open xml task editor.
1. Input: 
+ Select the operation type as validation.
+ Source type as File Connection
+ Select the xml file as Source.
2. Output:
+ Select SaveOperationResult as True
3. OperationResult:
+ Destination type as File Connection
+ Destination, set the output file.
+ Overwrite Destination as true.
4. Second operand:
+ SecondOperandType as File Connection
+ Second Operand, select the XSD file for source xml file.
5. Validation Options:
+ Validation Type as XSD.
+ FailOnValidationFail as True.
+ ValidationDetails as True.
6. Execute the package.


